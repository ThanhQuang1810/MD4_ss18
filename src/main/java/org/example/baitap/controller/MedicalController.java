package org.example.baitap.controller;

import org.example.baitap.dao.IMedical;
import org.example.baitap.dao.MedicalDaoImpl;
import org.example.baitap.models.Medical;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
@RequestMapping("/medical")
public class MedicalController {
    private IMedical medicalDao = new MedicalDaoImpl();

    @GetMapping
    public String showForm(Model model) {
        List<Medical> medical = medicalDao.getAll();
        model.addAttribute("medicalForm", medical);
        return "medical-form";
    }

    @GetMapping("/medical-update/{id}")
    public String updateMedical(@PathVariable int id, Model model) {
        Medical medical = medicalDao.findById(id);
        model.addAttribute("medical", medical);
        return "medical-from-update";
    }

    @PostMapping("/medical-update")
    public String updateMedical(@ModelAttribute("medical") Medical medical) {
        medicalDao.update(medical);
        return "redirect:/medical";
    }
}
