package ucstt.classmanagement.Controller;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ucstt.classmanagement.DAO.AttandanceDAO;
import ucstt.classmanagement.Model.Attandance;
import ucstt.classmanagement.Utility.DateRangeWithoutWeekends;

/**
 * Servlet implementation class AttandanceReport
 */
@WebServlet("/AttandanceReport")
public class AttandanceReport extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttandanceReport() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		session.setAttribute("studentID", "stud011");
		String studentID=(String) session.getAttribute("studentID");
		AttandanceDAO attandanceDAO=new AttandanceDAO();
		List<Attandance> weeklyReportList=attandanceDAO.getWeeklyAttandance(studentID);
		List<Attandance> monthlyReportList=attandanceDAO.getMonthlyAttandance(studentID);

		List<Date> weeklyDateList=new ArrayList<>();
		for(Attandance attandance:weeklyReportList){
			weeklyDateList.add(attandance.getDate());
		}

		List<Integer> weeklyDataSeries=new ArrayList<>();
		weeklyDataSeries.add(0);

		int totalAll=120;
		int totalDue=0;
		int totalAttandance=0;
		int absent=0;

		@SuppressWarnings("deprecation")
		Date previousDate=new Date(2029,9,29);
		int count=0;
		for(int i=0;i<weeklyReportList.size();i++){
			Date newDate=weeklyReportList.get(i).getDate();
			int comparie=newDate.compareTo(previousDate);
			if(comparie==0)continue;
			if(comparie!=0){
			count=Collections.frequency(weeklyDateList, newDate);
			weeklyDataSeries.add(count);
			}
			previousDate=newDate;
		}
		weeklyDataSeries.add(0);
		Object[] arrayOfWeeklyDataSeries=weeklyDataSeries.toArray();
		int length = arrayOfWeeklyDataSeries.length;
        int[] intArray = new int[length];

        for (int i = 0; i < length; i++) {
            intArray[i] = (int) arrayOfWeeklyDataSeries[i];
        }

		request.getServletContext().setAttribute("weeklyDataSeries", intArray);

        LocalDate endDate = LocalDate.now();
        int year=endDate.getYear();
        int month=endDate.getMonthValue();
        LocalDate startDate=LocalDate.of(year, month, 1);
        List<LocalDate> dateRangeWithoutWeekends=DateRangeWithoutWeekends.getDatesWithoutWeekends(startDate, endDate);
        totalDue=dateRangeWithoutWeekends.size()*6;
        totalAttandance=monthlyReportList.size();
        double percentOfPresent=(double)totalAttandance/(double)totalDue;
        int present=(int)(percentOfPresent*100);
        absent=100-present;
        int[] monthlyDataSeries={0,0,present,absent};

        request.getServletContext().setAttribute("TotalAttandance", totalAttandance);
        request.getServletContext().setAttribute("TotalDue", totalDue);
        request.getServletContext().setAttribute("monthlyDataSeries",monthlyDataSeries);

        request.getRequestDispatcher("Stud_Attandance.jsp").include(request, response);
	}

}
