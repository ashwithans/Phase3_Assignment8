using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P3ASSIGNMENTDAY8
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string connectionString = "server=LAPTOP-HURDBM1G;database=EXERCISE8DB;trusted_connection=true;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT TOP 5 PId, PName, PPrice, MnfDate, ExpDate FROM Products ORDER BY PName DESC";

                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        Console.WriteLine($"PId: {reader["PId"]}, PName: {reader["PName"]}, PPrice: {reader["PPrice"]}, MnfDate: {reader["MnfDate"]}, ExpDate: {reader["ExpDate"]}");
                    }

                    reader.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            Console.ReadKey();
        }
    }
}
