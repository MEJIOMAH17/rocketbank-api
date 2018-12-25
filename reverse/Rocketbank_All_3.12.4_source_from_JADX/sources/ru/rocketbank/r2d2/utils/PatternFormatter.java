package ru.rocketbank.r2d2.utils;

import android.text.Editable;
import ru.rocketbank.core.widgets.RocketEditText;
import rx.functions.Action1;
import rx.functions.Func1;

public class PatternFormatter {

    public static class FormattedString {
        private String clean;
        private String formatted;

        public FormattedString(String str, String str2) {
            this.clean = str2;
            this.formatted = str;
        }

        public String getClean() {
            return this.clean;
        }

        public String getFormatted() {
            return this.formatted;
        }

        public String toString() {
            return this.formatted;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.utils.PatternFormatter$2 */
    static class C18362 implements Func1<String, FormattedString> {
        C18362() {
        }

        public final FormattedString call(String str) {
            return new FormattedString(str, str);
        }
    }

    public static FormattedString format(String str, String str2) {
        if (str2 != null) {
            if (!str2.isEmpty()) {
                String str3 = "";
                String str4 = "";
                int i = 0;
                int i2 = i;
                while (i < str2.length() && i2 < str.length()) {
                    StringBuilder stringBuilder;
                    char charAt = str.charAt(i2);
                    char charAt2 = str2.charAt(i);
                    if (charAt2 != 'D') {
                        if (charAt2 != 'S') {
                            if (charAt2 != 'W') {
                                if (charAt2 != 'd') {
                                    if (charAt2 != 's') {
                                        if (charAt2 != 'w') {
                                            StringBuilder stringBuilder2 = new StringBuilder();
                                            stringBuilder2.append(str4);
                                            stringBuilder2.append(charAt2);
                                            str4 = stringBuilder2.toString();
                                            i++;
                                            i2--;
                                            i2++;
                                        }
                                    }
                                }
                            }
                            if (Character.isLetter(charAt)) {
                                charAt = charAt2 == 'w' ? Character.toLowerCase(charAt) : Character.toUpperCase(charAt);
                                stringBuilder = new StringBuilder();
                                stringBuilder.append(str4);
                                stringBuilder.append(charAt);
                                str4 = stringBuilder.toString();
                                stringBuilder = new StringBuilder();
                                stringBuilder.append(str3);
                                stringBuilder.append(charAt);
                                str3 = stringBuilder.toString();
                                i++;
                                i2++;
                            } else {
                                i2++;
                            }
                        }
                        if (Character.isDigit(charAt) || Character.isLetter(charAt)) {
                            charAt = charAt2 == 's' ? Character.toLowerCase(charAt) : Character.toUpperCase(charAt);
                            stringBuilder = new StringBuilder();
                            stringBuilder.append(str4);
                            stringBuilder.append(charAt);
                            str4 = stringBuilder.toString();
                            stringBuilder = new StringBuilder();
                            stringBuilder.append(str3);
                            stringBuilder.append(charAt);
                            str3 = stringBuilder.toString();
                            i++;
                            i2++;
                        } else {
                            i2++;
                        }
                    }
                    if (Character.isDigit(charAt)) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(str4);
                        stringBuilder.append(charAt);
                        str4 = stringBuilder.toString();
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(str3);
                        stringBuilder.append(charAt);
                        str3 = stringBuilder.toString();
                        i++;
                        i2++;
                    } else {
                        i2++;
                    }
                }
                if (str2.length() > str4.length()) {
                    str = str2.substring(0, str4.length()).toLowerCase();
                    str4 = str4.substring(0, Math.max(Math.max(str.lastIndexOf("d"), str.lastIndexOf("w")), str.lastIndexOf("s")) + 1);
                }
                return new FormattedString(str4, str3);
            }
        }
        return new FormattedString(str, str);
    }

    public static void setup(RocketEditText rocketEditText, String str) {
        setup(rocketEditText, str, null);
    }

    public static void setup(final RocketEditText rocketEditText, final String str, final Action1<FormattedString> action1) {
        if (rocketEditText != null) {
            Func1 c18351;
            if (str != null) {
                c18351 = new Func1<String, FormattedString>() {
                    public final FormattedString call(String str) {
                        return PatternFormatter.format(str, str);
                    }
                };
            } else {
                c18351 = new C18362();
            }
            rocketEditText.addTextChangedListener(new TextWatcherAbstract() {
                public final void afterTextChanged(Editable editable) {
                    rocketEditText.removeTextChangedListener(this);
                    FormattedString formattedString = (FormattedString) c18351.call(editable.toString());
                    if (action1 != null) {
                        action1.call(formattedString);
                    }
                    editable.replace(0, editable.length(), formattedString.getFormatted());
                    rocketEditText.addTextChangedListener(this);
                }
            });
        }
    }
}
