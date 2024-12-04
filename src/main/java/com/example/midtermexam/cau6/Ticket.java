package com.example.midtermexam.cau6;

public class Ticket {
    private String ticketId;
    private String movieName;
    private String showtime;
    private double ticketPrice;

    public Ticket(String ticketId, String movieName, String showtime, double ticketPrice) {
        this.ticketId = ticketId;
        this.movieName = movieName;
        this.showtime = showtime;
        this.ticketPrice = ticketPrice;
    }

    public String getTicketId() {
        return ticketId;
    }

    public void setTicketId(String ticketId) {
        this.ticketId = ticketId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getShowtime() {
        return showtime;
    }

    public void setShowtime(String showtime) {
        this.showtime = showtime;
    }

    public double getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(double ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    @Override
    public String toString() {
        return "Ticket{" +
                "ticketId='" + ticketId + '\'' +
                ", movieName='" + movieName + '\'' +
                ", showtime='" + showtime + '\'' +
                ", ticketPrice=" + ticketPrice +
                '}';
    }
}
