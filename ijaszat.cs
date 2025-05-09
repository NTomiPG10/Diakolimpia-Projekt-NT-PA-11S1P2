using System;
using MySql.Data.MySqlClient;

class Program
{
    static void Main()
    {
        string connectionString = "Server=localhost;Database=IjSzLanyok;Uid=root;Pwd=;"; // Pwd=; ha nincs jelszó

        using (var connection = new MySqlConnection(connectionString))
        {
            connection.Open();

            string query = @"
                SELECT name, school_or_club, category, individual_score
                FROM archers
                ORDER BY individual_score DESC
                LIMIT 1;
            ";

            using (var command = new MySqlCommand(query, connection))
            using (var reader = command.ExecuteReader())
            {
                if (!reader.HasRows)
                {
                    Console.WriteLine("Nincs még adat az íjászoknál.");
                }
                else
                {
                    reader.Read();

                    string name = reader.GetString("name");
                    string club = reader.GetString("school_or_club");
                    string category = reader.GetString("category");
                    int score = reader.GetInt32("individual_score");

                    Console.WriteLine($"Legmagasabb egyéni pontszám:");
                    Console.WriteLine($"Név: {name}");
                    Console.WriteLine($"Iskola/Egyesület: {club}");
                    Console.WriteLine($"Kategória: {category}");
                    Console.WriteLine($"Pontszám: {score}");
                }
            }
        }
    }
}
