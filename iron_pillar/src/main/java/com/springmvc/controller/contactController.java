package com.springmvc.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.springmvc.domain.Contact;
import com.springmvc.domain.Criteria;
import com.springmvc.domain.PageMake;
import com.springmvc.domain.Reply;
import com.springmvc.service.ContactService;
import com.springmvc.service.ReplyService;

@Controller
@RequestMapping("/contact")
public class contactController 
{
	@Autowired
	private ContactService contactService;
	@Autowired
	private ReplyService replyService;

	@RequestMapping
	public String ContactPage(Criteria cri, Model model) throws Exception {
		// 전체 글 개수
		int PageList = contactService.contactListCnt();

		// 페이징 객체
		PageMake pagemake = new PageMake();
		pagemake.setCri(cri);
		pagemake.setTotalCount(PageList);

		List<Map<String, Object>> list = contactService.contactList(cri);

		model.addAttribute("list", list);
		model.addAttribute("page", pagemake);

		return "contactPage";
	}

	@GetMapping("{num}")
	public String ContactPage(@PathVariable int num, Criteria cri, Model model) throws Exception {
		// 전체 글 개수
		int PageList = contactService.contactListCnt();

		// 페이징 객체
		PageMake pagemake = new PageMake();
		cri.setPage(num);
		pagemake.setCri(cri);
		pagemake.setTotalCount(PageList);

		List<Map<String, Object>> list = contactService.contactList(cri);

		model.addAttribute("list", list);
		model.addAttribute("page", pagemake);

		return "contactPage";
	}

	@GetMapping("/addContact") // 게시글 작성 폼
	public String writePage(@ModelAttribute("write") Contact write) {
		return "addContact";
	}

	@PostMapping("/addContact") // 게시글 작성 처리
	public String Newwrite(@ModelAttribute("write") Contact write) {

		MultipartFile writeImage = write.getwImage();
		String saveName = writeImage.getOriginalFilename();
		File saveFile = new File(
				"D:/JHM/jsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/iron_pillar/resources/img",
				saveName);
		write.setwImageName(saveName);
		if (writeImage != null && !writeImage.isEmpty()) {
			try {
				writeImage.transferTo(saveFile);
			} catch (Exception e) {
				throw new RuntimeException("상품 이미지 업로드가 실패했습니다.", e);
			}
		}
		contactService.setNewWrite(write);
		return "redirect:/contact";
	}

	@GetMapping("/contactItem/{wNum}") // 게시글 상세보기
	public String contactWriteItem(@PathVariable int wNum, Model model)
	// 매개변수값을 담고, 모델객체를 들고오는 함수
	{
		Contact write = contactService.getWriteBywNum(wNum);
		List<Reply> replyList = replyService.getReplyListBywNum(wNum);
		// Write 도메인 참조변수 write에 서비스안의 매개변수가 담긴 함수를 대입
		model.addAttribute("write", write);
		model.addAttribute("replyList", replyList); // 댓글 목록 모델에 추가하기
		// model에 키, 값을 주어 뷰 데이터에 전달
		return "contactWriteItem";
		// 해당 페이지에 리턴한다.
	}
	
	@PostMapping("/contactWriteItem/{wNum}/reply")
	public String addReply(@PathVariable int wNum, @ModelAttribute("reply") Reply reply) {
	    System.out.println(wNum);
	    reply.setwNum(wNum);
	    reply.setContent(reply.getContent()); // 댓글 내용을 설정합니다.
	    System.out.println("리플내용: "+reply.getContent());
	    replyService.setNewReply(reply);
	    return "redirect:/contact/contactWriteItem/" + wNum;
	}
}
