package Pack01;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class voteController {

	@PostMapping("/voteResult")
	String doubleCheck(VoteResultDTO voteResultDTO,Model model) {
		
		VoteResult voteResult = new VoteResult(voteResultDTO.getId(),voteResultDTO.getSelectNum());
		
		voteResult.voteInsert();
		
		model.addAttribute("alertstr",voteResult.getAlertstr());
		
		model.addAttribute("voteResult",voteResult);

		
		return voteResult.getRedirectView();
		
	}
	   
}
