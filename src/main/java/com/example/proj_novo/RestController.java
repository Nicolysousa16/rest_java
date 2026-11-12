package com.example.proj_novo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RestController {

    private List<Prato> pratos = new ArrayList<>();

    public RestController() {

        pratos.add(new Prato("Lasanha", "Almoço", 4, "14/11/2026", false));

        pratos.add(new Prato("Panqueca", "Jantar", 2, "15/11/2026", true));

        pratos.add(new Prato("Macarronada", "Almoço", 3, "16/11/2026", false));

        pratos.add(new Prato("Salada", "Jantar", 2, "17/11/2026", true));
    }

    @GetMapping("/pratos")
    public String inicio(Model model) {

        int total = pratos.size();

        long feitos = pratos.stream()
                .filter(Prato::feito)
                .count();

        model.addAttribute("total", total);
        model.addAttribute("feitos", feitos);
        model.addAttribute("proximaData", "14/11");

        return "menu";
    }
}
