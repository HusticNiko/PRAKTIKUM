package si.feri.ost.ost.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import si.feri.ost.ost.demo.db.*;
import si.feri.ost.ost.demo.entities.Oseba;

@Controller
public class MainController {

	static ArrayList<String> seznam = new ArrayList<String>();
	static ArrayList<String> seznamOseb = new ArrayList<String>();


	@RequestMapping(value = { "/", "/Index" }, method = RequestMethod.GET)
	public String index() {
		return "Index";
	}
	@RequestMapping(value = {"/mojeZbirke" }, method = RequestMethod.GET)
	public String mojeZbirke() {
		return "mojeZbirke";
	}
	@RequestMapping(value = {"/Sporocila" }, method = RequestMethod.GET)
	public String sporocila() {
		return "Sporocila";
	}
	@RequestMapping(value = {"/Kategorije" }, method = RequestMethod.GET)
	public String kategorije() {
		return "Kategorije";
	}
	@RequestMapping(value = {"/mojProfil" }, method = RequestMethod.GET)
	public String mojProfil() {
		return "mojProfil";
	}
	@RequestMapping(value = {"/1080" }, method = RequestMethod.GET)
	public String gtx1080() {
		return "1080";
	}
	@RequestMapping(value = {"/Dodajanje_artikla" }, method = RequestMethod.GET)
	public String dodajanjeArtikla() {
		return "Dodajanje_artikla";
	}
	@RequestMapping(value = {"/O_nas" }, method = RequestMethod.GET)
	public String oNas() {
		return "O_nas";
	}
	@RequestMapping(value = {"/Racun" }, method = RequestMethod.GET)
	public String racun() {
		return "Racun";
	}
	@RequestMapping(value = {"/Registracija" }, method = RequestMethod.GET)
	public String registracija() {
		return "Registracija";
	}



	@RequestMapping(value = { "/zahteva" }, method = RequestMethod.GET)
	@ResponseBody
	public String mojaMetoda(@RequestParam("param")String p){
		String param = p;
		int steviloCrk = 0;

		if(param.equals("")) {
			
		}
		else {
			for(int st=0;st<param.length();st++) {
				if(Character.isLetter(param.charAt(st))) {
					steviloCrk++;
				}
			}
		}     
		return "�tevilo �rk v parametru: "+steviloCrk;
	}

	@RequestMapping(value = { "/kalkulator" }, method = RequestMethod.GET)
	@ResponseBody
	public String kalkulator(@RequestParam("a")String p1, @RequestParam("b")String p2, @RequestParam("c")String p3){
		int a = Integer.parseInt(p1);
		int b = Integer.parseInt(p2);
		String c = p3;


		if(c.equals("plus")) {
			return "Vsota: "+ (a+b);
		}
		else if(c.equals("minus")) {
			return "Razlika: "+ (a-b);
		}
		else if(c.equals("ulomek")) {
			return"Deljenje:"+ (a/b);
		}
		else if(c.equals("krat")) {
			return "Produkt: "+ (a*b);
		}
		else {return null;}
	}
	@RequestMapping(value = {"/Kalkulator" }, method = RequestMethod.GET)
	public String kalkulator() {
		return "Kalkulator";
	}  

	@RequestMapping(value = {"/Kalkulator" }, method = RequestMethod.POST)
	@ResponseBody
	public String kalkulator2(@RequestParam("st1")String p1, @RequestParam("st2")String p2, @RequestParam("operacija")String p3) {
		int a = Integer.parseInt(p1);
		int b = Integer.parseInt(p2);
		String c = p3;


		if(c.equals("plus")) {
			return "Vsota: "+ (a+b);
		}
		else if(c.equals("minus")) {
			return "Razlika: "+ (a-b);
		}
		else if(c.equals("ulomek")) {
			return"Deljenje:"+ (a/b);
		}
		else if(c.equals("krat")) {
			return "Produkt: "+ (a*b);
		}
		else {return null;}
	}

	@RequestMapping(value = { "/generiraj" ,}, method = RequestMethod.GET)
	@ResponseBody
	public String generiraj() {
		int stevilo = (int)(Math.random()*100+1);
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession(true);//true will create if necessary
		session.setAttribute("stevilo",""+stevilo);
		return ""+stevilo;
	}

	@RequestMapping(value = { "/igra" ,}, method = RequestMethod.GET)
	@ResponseBody
	public String vpis(@RequestParam(value="param", required = true) int param) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession(true);//true will create if necessary
		String random = (String)session.getAttribute("stevilo");
		int nakljucno = Integer.parseInt(random);
		if(param>nakljucno)
			return "�tevilo je manj�e.";
		else if(param<nakljucno)
			return "�tevilo je ve�je.";
		else
			return "Bravo, uganili ste!";
	}

	@RequestMapping(value = { "/iskanje" ,}, method = RequestMethod.GET)
	@ResponseBody
	public String iskanje(@RequestParam(value="ime", required = true) String ime) {
		seznam.clear();
		Collections.addAll(seznam, "Bard Gruji�", "Luka �etina", "David �ele", "Tilen Ravnak", "Luka Joksimovi�", "Jo�e �emva", "Jo�e Bla�evi�", "Niko Husti�");
		String izpis = "<ul>";
		for (String element : seznam) {
			if(element.toLowerCase().contains(ime.toLowerCase()))
				izpis += "<li>"+element+"</li>";
		}
		izpis += "</ul>";
		return ""+izpis;
	}
	@Autowired
	OsebaDao o;

	@RequestMapping(value = { "/isci" ,}, method = RequestMethod.GET)
	@ResponseBody
	public String isci(@RequestParam(value="ime", required = true) String ime) {

		List<Oseba>list = o.getAllOsebe();

		String izpis = "<ul>";
		for (Oseba element : list) {
			if(element.getIme().toLowerCase().contains(ime.toLowerCase()) || element.getPriimek().toLowerCase().contains(ime.toLowerCase()))
				izpis += "<li>"+element.getIme()+" "+element.getPriimek() +"</li>";
		}
		izpis += "</ul>";
		return ""+izpis;

	}
	@RequestMapping(value = {"/VnosOseb" }, method = RequestMethod.GET)
	public String vpisOsebe(){
		return "VnosOseb";
	}
	public String vpisOseb(Model model, @RequestParam(value="ime", required =false)String ime, @RequestParam(value="priimek", required =false)String priimek) {
		boolean obstaja = false;

		for (String oseba : seznamOseb) {
			if ((oseba).equals(ime + " " + priimek)) {
				obstaja = true;
				break;
			}
		}
		if(obstaja==false) {
			seznamOseb.add(ime + " " + priimek);
			model.addAttribute(obstaja);
			model.addAttribute(ime.toLowerCase()+"."+priimek.toLowerCase()+"@ost.si");
		}
		return "redirect:/seznamOseb";
	}/*
	@RequestMapping(value = {"/SeznamOseb" }, method = RequestMethod.GET)
	public String vpisiOseb(Model model) {
		model.addAttribute("list", seznamOseb);
	String a = "";	

	for(String oseba : seznamOseb) {
		oseba
	}




		return "SeznamOseb";
	}
	*/
}