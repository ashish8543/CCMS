import java.util.*;

public class Main{
    
    public static void main(String args[]){
        
        Scanner sc= new Scanner(System.in);
        Ticket t= new Ticket();
        System.out.println("Enter no of bookings:");
        int ch= sc.nextInt();
        sc.nextLine();
        System.out.println("Enter the available tickets:");
        int ava= sc.nextInt();
        sc.nextLine();
        t.setAvailableTickets(ava);
        while(ch!=0)
        {
            System.out.println("Enter the ticketid:");
            int id= sc.nextInt();
            sc.nextLine();
            System.out.println("Enter the price:");
            int price= sc.nextInt();
            sc.nextLine();
            System.out.println("Enter the no of tickets:");
            int no_tic= sc.nextInt();
            sc.nextLine();
            t.setTicketid(id);
            t.setPrice(price);
            //int total= t.calculateTicketCost(no_tic);
            if(t.calculateTicketCost(no_tic)==-1){
                System.out.println("Tickets not sufficient / available");
                
            }
            else{
            System.out.println("Available tickets: "+t.getAvailableTickets());
            int total= t.calculateTicketCost(no_tic);
           
            
            System.out.println("Total amount:"+total);
            System.out.println("Available ticket after booking:"+t.getAvailableTickets());
            }
            ch--;
        }
    }
}