@import com.example.proj_novo.Prato
@import java.util.List
@param List<Prato> pratos

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cardápio da Semana</title>
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>

<div class="container">

    <!-- MENU LATERAL -->
    <aside class="sidebar">

        <h2>🍳 Cardápio da Semana</h2>

        <nav>
            <a href="/" class="active">🏠 Início</a>

            <a href="/#cardapio">🍽️ Meu Cardápio</a>

            <a href="/pratos/novo">➕ Adicionar Prato</a>

            <a href="/#cardapio">✅ Pratos cadastrados</a>
        </nav>

        <p class="sidebar-footer">
            Organize suas refeições!
        </p>

    </aside>


    <!-- CONTEÚDO -->
    <main class="content">

        <section class="welcome">

            <div>
                <h1>Bem-vindo(a) à sua cozinha!</h1>

                <p>
                    Planeje as refeições da semana
                    e marque o que já saiu do fogão.
                </p>

                <a href="/pratos/novo" class="btn-primary">
                    + Novo prato
                </a>
            </div>

            <div class="welcome-image">
                🍲
            </div>

        </section>


        <!-- ESTATÍSTICAS -->
        <section class="statistics">

            <div class="stat-card">
                <h2>${pratos.size()}</h2>
                <p>Pratos planejados</p>
            </div>

            <div class="stat-card">
                <h2>${pratos.stream().filter(p -> p.feito()).count()}</h2>
                <p>Pratos feitos</p>
            </div>

            <div class="stat-card">
                <h2>${pratos.stream().filter(p -> !p.feito()).count()}</h2>
                <p>Pendentes</p>
            </div>

        </section>


        <!-- LISTA DE PRATOS -->
        <section id="cardapio" class="cardapio">

            <div class="section-header">

                <h2>Meu Cardápio 🍽️</h2>

                <a href="/pratos/novo">
                    + Adicionar
                </a>

            </div>


            @if(pratos.isEmpty())

                <div class="empty">

                    <h3>Nenhum prato cadastrado ainda!</h3>

                    <p>
                        Comece adicionando o primeiro prato
                        ao seu cardápio.
                    </p>

                    <a href="/pratos/novo" class="btn-primary">
                        Adicionar primeiro prato
                    </a>

                </div>

            @else

                <div class="pratos-grid">

                    @for(Prato prato : pratos)

                        <article class="prato-card">

                            <span class="categoria">
                                ${prato.categoria()}
                            </span>

                            <h3>${prato.nome()}</h3>

                            <p>🍴 ${prato.tipo()}</p>

                            <p>👥 ${prato.porcoes()} porções</p>

                            <p>📅 ${prato.dataPlanejada().toString()}</p>

                            <p>
                                ${prato.feito() ? "✅ Feito" : "⏳ Pendente"}
                            </p>

                            @if(!prato.observacao().isBlank())
                                <p class="observacao">
                                    ${prato.observacao()}
                                </p>
                            @endif

                        </article>

                    @endfor

                </div>

            @endif

        </section>

    </main>

</div>

</body>
</html>