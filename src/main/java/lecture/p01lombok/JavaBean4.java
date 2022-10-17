package lecture.p01lombok;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class JavaBean4 {
    private String address;
    private int score;
}
