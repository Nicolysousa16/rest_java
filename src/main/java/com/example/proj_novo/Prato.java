package com.example.proj_novo;

public record Prato(
        String nome,
        String tipo,
        int porcoes,
        String data,
        String categoria,
        boolean feito
) {}

