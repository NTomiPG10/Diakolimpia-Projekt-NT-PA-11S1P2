using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        string connectionString = "server=localhost;database=roplabdafiuk";

        using (var connection = new MySqlConnection(connectionString))
        {
            connection.Open();

            // 1. A legtöbb hibát elkövető 3 játékos
            string topMistakesQuery = @"
                SELECT players.name, COUNT(events.event_id) AS mistakes
                FROM events events
                JOIN players players ON events.scoring_player_id = players.player_id
                WHERE events.reason IS NOT NULL AND events.reason != ''
                GROUP BY players.name
                ORDER BY mistakes DESC
                LIMIT 3;
            ";

            Console.WriteLine("A 3 legtöbb hibát elkövető játékos:");
            using (var cmd = new MySqlCommand(topMistakesQuery, connection))
            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    string playerName = reader.GetString("name");
                    int mistakes = reader.GetInt32("mistakes");
                    Console.WriteLine($"{playerName} - {mistakes} hiba");
                }
            }

            Console.WriteLine();

            // 2. A legtöbb hálóérintést elkövető játékos
            string topNetTouchQuery = @"
                SELECT players.name, COUNT(*) AS netTouches
                FROM events
                JOIN players ON events.scoring_player_id = players.player_id
                WHERE events.special_event = 'Net Touch'
                GROUP BY players.name
                ORDER BY netTouches DESC
                LIMIT 1;
            ";

            Console.WriteLine("A legtöbb hálóérintést elkövető játékos:");
            using (var cmd = new MySqlCommand(topNetTouchQuery, connection))
            using (var reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    string playerName = reader.GetString("name");
                    int netTouches = reader.GetInt32("net_touches");
                    Console.WriteLine($"{playerName} - {netTouches} hálóérintés");
                }
                else
                {
                    Console.WriteLine("Nincs hálóérintés adat rögzítve.");
                }
            }
        }
    }
}
