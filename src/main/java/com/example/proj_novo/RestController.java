package com.example.proj_novo;

import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RestController {

    private final List<Prato> pratos = new ArrayList<>();



    @GetMapping("/menu")
    public String inicio(Model model) {

        model.addAttribute("pratos", pratos);

        return "menu";
    }

    @GetMapping("/pratos/novo")
    public String formulario() {

        return "formulario";
    }


    @PostMapping("/pratos")
    public String salvar(

            @RequestParam String nome,
            @RequestParam String tipo,
            @RequestParam int porcoes,
            @RequestParam String categoria,
            @RequestParam LocalDate dataPlanejada,
            @RequestParam(required = false, defaultValue = "")
            String observacao

    ) {

        Prato novoPrato = new Prato(
                nome,
                tipo,
                porcoes,
                categoria,
                dataPlanejada,
                observacao,
                false
        );

        pratos.add(novoPrato);

        return "redirect:/";
    }

}
