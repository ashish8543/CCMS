public class Ticket{
    
    private int ticketid;
    private int price;
    private static int availableTickets;
    
    public int calculateTicketCost(int nooftickets)
    {
        int total=0;
        if(availableTickets>=nooftickets)
        {
            availableTickets= availableTickets- nooftickets;
            total= nooftickets*price;
        }
        else{
            return -1;
        }
       return total;
    }
    
    public void setTicketid(int ticketid)
    {
        this.ticketid= ticketid;
    }
    public void setPrice(int price)
    {
        this.price=price;
    }
    public static void setAvailableTickets(int availableTickets)
    {
        if(availableTickets>0)
            availableTickets=availableTickets;
    }
    public int getTicketid()
    {
        return ticketid;
    }
    public int getPrice()
    {
        return price;
    }
    public static int getAvailableTickets()
    {
        return availableTickets;
    }
    
}