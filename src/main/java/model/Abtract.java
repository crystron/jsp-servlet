package model;

public abstract class Abtract {
    private String searchBar;
    public Abtract(){
    }
    public Abtract(String searchBar){
        this.searchBar = searchBar;
    }

    public String getSearchBar() {
        return searchBar;
    }
    public void setSearchBar(String searchBar) {
        this.searchBar = searchBar;
    }
}
