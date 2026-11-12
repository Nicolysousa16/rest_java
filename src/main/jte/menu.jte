@param int total
@param long feitos
@param String proximaData

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cardápio da Semana</title>

    <link rel="stylesheet" href="/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>

<div class="container">


    <aside class="sidebar">

        <div class="logo">
            <span>🍳</span>
            <h2>Cardápio da Semana</h2>
        </div>

        <nav>
            <a href="/" class="active">
                🏠 Início
            </a>

            <a href="/pratos">
                🍽️ Meu Cardápio
            </a>

            <a href="/pratos/novo">
                ➕ Adicionar Prato
            </a>

            <a href="/pratos/feitos">
                ✅ Feitos
            </a>
        </nav>

        <div class="sidebar-footer">
            <p>Organize sua semana com carinho! 💜</p>
        </div>

    </aside>



    <main class="content">

        <header class="topbar">
            <span>Minha cozinha</span>
            <div class="profile">👩🏻‍🍳</div>
        </header>

        <section class="welcome">

            <div class="welcome-text">

                <span class="tag">SEU PLANEJAMENTO SEMANAL</span>

                <h1>Bem-vindo(a) à sua cozinha!</h1>

                <p>
                    Planeje as refeições da semana e marque
                    o que já saiu do fogão.
                </p>

                <div class="buttons">
                    <a href="/pratos" class="btn-primary">
                        Ver meu cardápio →
                    </a>

                    <a href="/pratos/novo" class="btn-secondary">
                        + Novo prato
                    </a>
                </div>

            </div>

            <div class="welcome-image">
                <span>🍲</span>
                <p>Uma semana deliciosa começa aqui!</p>
            </div>

        </section>



        <section class="statistics">

            <div class="stat-card">
                <span class="stat-icon">📋</span>
                <h2>${total}</h2>
                <p>Pratos planejados</p>
            </div>

            <div class="stat-card">
                <span class="stat-icon">🍽️</span>
                <h2>${feitos}</h2>
                <p>Pratos feitos</p>
            </div>

            <div class="stat-card">
                <span class="stat-icon">📅</span>
                <h2>${proximaData}</h2>
                <p>Próximo prato</p>
            </div>

        </section>


        <section class="bottom-section">

            <div class="bottom-card">
                <h3>✨ Organização da semana</h3>
                <p>
                    Acompanhe suas refeições e mantenha
                    seu planejamento sempre atualizado.
                </p>

                <a href="/pratos">Acessar cardápio →</a>
            </div>

            <div class="bottom-card highlight">
                <h3>🥗 Hora de cozinhar!</h3>
                <p>
                    Adicione novas receitas e deixe sua
                    semana ainda mais saborosa.
                </p>

                <a href="/pratos/novo">Adicionar receita →</a>
            </div>

        </section>

    </main>

</div>

</body>
</html>