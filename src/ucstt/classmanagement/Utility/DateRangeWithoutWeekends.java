package ucstt.classmanagement.Utility;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

public class DateRangeWithoutWeekends {

	public static List<LocalDate> getDatesWithoutWeekends(LocalDate startDate, LocalDate endDate) {
        List<LocalDate> datesWithoutWeekends = new ArrayList<>();
        LocalDate currentDate = startDate;

        while (!currentDate.isAfter(endDate)) {
            if (currentDate.getDayOfWeek() != DayOfWeek.SATURDAY && currentDate.getDayOfWeek() != DayOfWeek.SUNDAY) {
                datesWithoutWeekends.add(currentDate);
            }
            currentDate = currentDate.plus(1, ChronoUnit.DAYS);
        }

        return datesWithoutWeekends;
    }
}
