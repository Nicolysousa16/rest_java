
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adicionar Prato</title>
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>

<div class="container">

    <!-- MENU LATERAL -->
    <aside class="sidebar">

        <h2>🍳 Cardápio da Semana</h2>

        <nav>
            <a href="/">🏠 Início</a>

            <a href="/#cardapio">🍽️ Meu Cardápio</a>

            <a href="/pratos/novo" class="active">
                ➕ Adicionar Prato
            </a>

            <a href="/#cardapio">✅ Pratos cadastrados</a>
        </nav>

        <p class="sidebar-footer">
            Organize suas refeições!
        </p>

    </aside>


    <!-- CONTEÚDO PRINCIPAL -->
    <main class="content">

        <h1>Novo prato</h1>

        <p>Preencha os dados para adicionar uma refeição.</p>


        <div class="form-layout">

            <!-- FORMULÁRIO -->
            <form action="/pratos" method="post"
                  class="prato-form">


                <div class="form-group">

                    <label for="nome">Nome do prato</label>

                    <input
                            type="text"
                            id="nome"
                            name="nome"
                            placeholder="Ex: Lasanha à Bolonhesa"
                            required>

                </div>


                <div class="form-row">

                    <div class="form-group">

                        <label>Tipo</label>

                        <label>
                            <input type="radio"
                                   name="tipo"
                                   value="Almoço"
                                   required>
                            Almoço
                        </label>

                        <label>
                            <input type="radio"
                                   name="tipo"
                                   value="Jantar">
                            Jantar
                        </label>

                    </div>


                    <div class="form-group">

                        <label for="porcoes">Porções</label>

                        <input
                                type="number"
                                id="porcoes"
                                name="porcoes"
                                min="1"
                                placeholder="Ex: 4"
                                required>

                    </div>

                </div>


                <div class="form-group">

                    <label for="categoria">Categoria</label>

                    <select id="categoria"
                            name="categoria"
                            required>

                        <option value="">Selecione</option>
                        <option value="Massa">Massa</option>
                        <option value="Salada">Salada</option>
                        <option value="Carne">Carne</option>
                        <option value="Vegano">Vegano</option>
                        <option value="Sobremesa">Sobremesa</option>

                    </select>

                </div>


                <div class="form-group">

                    <label for="dataPlanejada">
                        Data planejada
                    </label>

                    <input
                            type="date"
                            id="dataPlanejada"
                            name="dataPlanejada"
                            required>

                </div>


                <div class="form-group">

                    <label for="observacao">
                        Observação (opcional)
                    </label>

                    <textarea
                            id="observacao"
                            name="observacao"
                            rows="4"
                            placeholder="Ex: Preparar para sábado">
                    </textarea>

                </div>


                <!-- BOTÕES -->
                <div class="form-buttons">

                    <button type="submit" class="btn-primary">
                        Salvar prato
                    </button>

                    <a href="/" class="btn-secondary">
                        Cancelar
                    </a>

                </div>

            </form>


            <!-- RESUMO -->
            <div class="resumo-card">

                <h3>Resumo do prato 👀</h3>

                <p>🍽️ Preencha os campos ao lado.</p>

                <p>👥 Informe a quantidade de porções.</p>

                <p>📅 Escolha a data planejada.</p>

                <small>
                    Seu prato será adicionado ao cardápio
                    depois de salvar.
                </small>

            </div>

        </div>

    </main>

</div>

</body>
</html>

