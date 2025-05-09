using System;
using MySql.Data.MySqlClient;

class Program
{
    static void Main()
    {
        string connectionString = "Server=localhost;Database=FociFiuk;Uid=root;Pwd=;"; // Ha jelszó kell, töltsd ki
        
        using (var connection = new MySqlConnection(connectionString))
        {
            connection.Open();

            string query = @"
                SELECT p.PlayerName, t.TeamName, e.Minute
                FROM Card c
                JOIN Evnt e ON c.EventID = e.EventID
                JOIN Player p ON e.InvolvedPlayerID = p.PlayerID
                JOIN Team t ON p.TeamID = t.TeamID
                WHERE c.CardType = 'Yellow'
                ORDER BY e.Minute;
            ";

            using (var command = new MySqlCommand(query, connection))
            using (var reader = command.ExecuteReader())
            {
                if (!reader.HasRows)
                {
                    Console.WriteLine("Nem történt sárga lapos eset.");
                }
                else
                {
                    Console.WriteLine("Sárga lapot kapott játékosok:");
                    while (reader.Read())
                    {
                        string playerName = reader.GetString("PlayerName");
                        string teamName = reader.GetString("TeamName");
                        int minute = reader.GetInt32("Minute");

                        Console.WriteLine($"- {playerName} ({teamName}) a {minute}. percben");
                    }
                }
            }
        }
    }
}
