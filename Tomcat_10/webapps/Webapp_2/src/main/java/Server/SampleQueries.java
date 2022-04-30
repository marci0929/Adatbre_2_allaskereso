package Server;

public class SampleQueries {
    private String[][] queryList={
            {"1. Átlag bérezés fizikai munkáért",
                    "SELECT AVG(BEREZES) FROM ALLAS, MUNKAKOR WHERE ALLAS.MUNKAKOR_ID=MUNKAKOR.ID AND MUNKAKOR.ALLAS_TIPUSA='Fizikai'"},
            {"2. Állások, amikhez elég 8 általános",
                    "SELECT NEV FROM ALLAS, MUNKAKOR WHERE ALLAS.MUNKAKOR_ID=MUNKAKOR.ID AND MUNKAKOR.SZUKSEGES_VEGZETTSEG='8 Általános'"},
            {"3. Melyik vállaltoknál dolgoznak diákok",
                    "SELECT DISTINCT NEVE FROM VALLALAT, DIAK_FELHASZNALO WHERE DIAK_FELHASZNALO.VALLALAT_ID=VALLALAT.ID"},
            {"4. Melyik állásokra jelentkeztek, és hányan",
                    "SELECT ALLAS_NEVE, COUNT(*) FROM ALLAS, JELENTKEZOK WHERE JELENTKEZOK.ALLAS_ID=ALLAS.ID GROUP BY ALLAS_NEVE"},
            {"5. Azon állások listázása, ahol meg van adva szükséges munkatapasztalat",
                    "SELECT ALLAS_NEVE, MUNKATAPASZTALAT_EV FROM ALLAS, MUNKAKOR, EGYEB_FELTETELEK WHERE ALLAS.MUNKAKOR_ID=MUNKAKOR.ID AND EGYEB_FELTETELEK.ID=MUNKAKOR.EGYEB_FELTETELEK_ID"},
            {"6. Azon emberek nevének listázása, akik cseréltek jelszót, és hányszor tették ezt",
                    "SELECT NEV, COUNT(*) FROM PASSCHANGE, FIOKADATOK, SZEMELYES_ADATOK WHERE PASSCHANGE.EMAIL=FIOKADATOK.EMAIL AND FIOKADATOK.SZEMELYES_ADATOK_ID=SZEMELYES_ADATOK_ID GROUP BY NEV"}
    };

    public String[][] getQueryList() {
        return queryList;
    }
}
