package com.example.proj_novo;

import java.time.LocalDate;

public record Prato(
        String nome,
        String tipo,
        int porcoes,
        String categoria,
        LocalDate dataPlanejada,
        String observacao,
        boolean feito
) {}

