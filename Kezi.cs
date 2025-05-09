using System;
using MySql.Data.MySqlClient;

class Program
{
    static void Main()
    {
        string connectionString = "Server=localhost;Database=KeziLanyok;Uid=root;Pwd=;"; // Nem tudom tesztelni emiatt, nem enged be
        using (var connection = new MySqlConnection(connectionString))
        {
            connection.Open();

            string query = @"
                SELECT t.name AS TeamName, COUNT(*) AS SuspensionCount
                FROM events e
                JOIN teams t ON e.team_id = t.id
                WHERE e.event_type = 'Two Minute Suspension'
                GROUP BY t.name
                ORDER BY SuspensionCount DESC
                LIMIT 1;
            ";

            using (var command = new MySqlCommand(query, connection))
            using (var reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    string teamName = reader.GetString("TeamName");
                    int suspensionCount = reader.GetInt32("SuspensionCount");

                    Console.WriteLine($"A legtöbb 2 perces kiállítást kapó csapat: {teamName} ({suspensionCount} db kiállítás)");
                }
                else
                {
                    Console.WriteLine("Nincs 2 perces kiállítás rögzítve az adatbázisban.");
                }
            }
        }
    }
}
