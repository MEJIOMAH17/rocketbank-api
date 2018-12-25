package ru.rocketbank.r2d2.fragments.transfers;

import android.content.res.Resources;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: DatePeriodChooseDialog.kt */
public abstract class BudgetDate implements Serializable {
    public static final Companion Companion = new Companion();

    /* compiled from: DatePeriodChooseDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final ru.rocketbank.r2d2.fragments.transfers.BudgetDate create(java.lang.String r2, java.lang.String r3) {
            /*
            r1 = this;
            r0 = "tax_period";
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
            r0 = "tax_period_kind";
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
            r0 = r3.hashCode();
            switch(r0) {
                case -1349088399: goto L_0x004c;
                case -52955408: goto L_0x003d;
                case 3076014: goto L_0x002d;
                case 3704893: goto L_0x0024;
                case 104080000: goto L_0x001b;
                case 651403948: goto L_0x0012;
                default: goto L_0x0011;
            };
        L_0x0011:
            goto L_0x005c;
        L_0x0012:
            r0 = "quarter";
            r0 = r3.equals(r0);
            if (r0 == 0) goto L_0x005c;
        L_0x001a:
            goto L_0x0045;
        L_0x001b:
            r0 = "month";
            r0 = r3.equals(r0);
            if (r0 == 0) goto L_0x005c;
        L_0x0023:
            goto L_0x0045;
        L_0x0024:
            r0 = "year";
            r0 = r3.equals(r0);
            if (r0 == 0) goto L_0x005c;
        L_0x002c:
            goto L_0x0045;
        L_0x002d:
            r0 = "date";
            r3 = r3.equals(r0);
            if (r3 == 0) goto L_0x005c;
        L_0x0035:
            r3 = new ru.rocketbank.r2d2.fragments.transfers.BudgetDate$Date;
            r3.<init>(r2);
            r3 = (ru.rocketbank.r2d2.fragments.transfers.BudgetDate) r3;
            return r3;
        L_0x003d:
            r0 = "halfyear";
            r0 = r3.equals(r0);
            if (r0 == 0) goto L_0x005c;
        L_0x0045:
            r0 = ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Period.Companion;
            r2 = r0.create(r2, r3);
            return r2;
        L_0x004c:
            r0 = "custom";
            r3 = r3.equals(r0);
            if (r3 == 0) goto L_0x005c;
        L_0x0054:
            r3 = new ru.rocketbank.r2d2.fragments.transfers.BudgetDate$Custom;
            r3.<init>(r2);
            r3 = (ru.rocketbank.r2d2.fragments.transfers.BudgetDate) r3;
            return r3;
        L_0x005c:
            r3 = new ru.rocketbank.r2d2.fragments.transfers.BudgetDate$Custom;
            r3.<init>(r2);
            r3 = (ru.rocketbank.r2d2.fragments.transfers.BudgetDate) r3;
            return r3;
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Companion.create(java.lang.String, java.lang.String):ru.rocketbank.r2d2.fragments.transfers.BudgetDate");
        }
    }

    /* compiled from: DatePeriodChooseDialog.kt */
    public static final class Custom extends BudgetDate {
        private String value;

        public Custom() {
            this(null, 1, null);
        }

        public final String kind() {
            return "custom";
        }

        public Custom(String str) {
            super();
            this.value = str;
        }

        public /* synthetic */ Custom(String str, int i, Ref ref) {
            if ((i & 1) != 0) {
                str = null;
            }
            this(str);
        }

        public final String getValue() {
            return this.value;
        }

        public final void setValue(String str) {
            this.value = str;
        }

        public final String value() {
            String str = this.value;
            return str == null ? "" : str;
        }

        public final String toString() {
            return value();
        }
    }

    /* compiled from: DatePeriodChooseDialog.kt */
    public static final class Date extends BudgetDate {
        public static final Companion Companion = new Companion();
        private static final SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy", new Locale("ru"));
        private Integer day;
        private Integer month;
        private Integer year;

        /* compiled from: DatePeriodChooseDialog.kt */
        public static final class Companion {
            private Companion() {
            }

            public final SimpleDateFormat getFormat() {
                return Date.format;
            }
        }

        public final String kind() {
            return ProviderField.DATE;
        }

        public Date() {
            super();
        }

        public final Integer getDay() {
            return this.day;
        }

        public final void setDay(Integer num) {
            this.day = num;
        }

        public final Integer getMonth() {
            return this.month;
        }

        public final void setMonth(Integer num) {
            this.month = num;
        }

        public final Integer getYear() {
            return this.year;
        }

        public final void setYear(Integer num) {
            this.year = num;
        }

        public Date(String str) {
            Intrinsics.checkParameterIsNotNull(str, "period");
            this();
            Calendar instance = Calendar.getInstance();
            Intrinsics.checkExpressionValueIsNotNull(instance, "calendar");
            instance.setTime(format.parse(str));
            this.day = Integer.valueOf(instance.get(5));
            this.month = Integer.valueOf(instance.get(2));
            this.year = Integer.valueOf(instance.get(1));
        }

        public final String value() {
            SimpleDateFormat simpleDateFormat = format;
            Calendar instance = Calendar.getInstance();
            Integer num = this.year;
            instance.set(1, num != null ? num.intValue() : instance.get(1));
            num = this.month;
            instance.set(2, num != null ? num.intValue() : instance.get(2));
            num = this.day;
            instance.set(5, num != null ? num.intValue() : instance.get(5));
            Intrinsics.checkExpressionValueIsNotNull(instance, "Calendar.getInstance().a…MONTH))\n                }");
            String format = simpleDateFormat.format(instance.getTime());
            Intrinsics.checkExpressionValueIsNotNull(format, "format.format(Calendar.g…)\n                }.time)");
            return format;
        }

        public final String toString() {
            return value();
        }
    }

    /* compiled from: DatePeriodChooseDialog.kt */
    public static final class Period extends BudgetDate {
        public static final Companion Companion = new Companion();
        private Integer half;
        private Integer month;
        private Integer quarter;
        private int year = Calendar.getInstance().get(1);

        /* compiled from: DatePeriodChooseDialog.kt */
        public static final class Companion {
            private Companion() {
            }

            public final BudgetDate create(String str, String str2) {
                Intrinsics.checkParameterIsNotNull(str, "tax_period");
                Intrinsics.checkParameterIsNotNull(str2, "tax_period_kind");
                Period period = new Period();
                str = StringsKt.split$default(str, new String[]{".", ":"}, false, 0, 6, null);
                if (str.size() == 1) {
                    return period;
                }
                period.setYear(Integer.parseInt((String) str.get(1)));
                int hashCode = str2.hashCode();
                if (hashCode != -52955408) {
                    if (hashCode != 104080000) {
                        if (hashCode == 651403948) {
                            if (str2.equals("quarter") != null) {
                                period.setQuarter(Integer.valueOf(Integer.parseInt((String) str.get(0))));
                            }
                        }
                    } else if (str2.equals("month") != null) {
                        period.setMonth(Integer.valueOf(Integer.parseInt((String) str.get(0))));
                    }
                } else if (str2.equals("halfyear") != null) {
                    period.setHalf(Integer.valueOf(Integer.parseInt((String) str.get(0))));
                }
                return period;
            }
        }

        public Period() {
            super();
        }

        public final Integer getMonth() {
            return this.month;
        }

        public final void setMonth(Integer num) {
            this.month = num;
        }

        public final Integer getQuarter() {
            return this.quarter;
        }

        public final void setQuarter(Integer num) {
            this.quarter = num;
        }

        public final Integer getHalf() {
            return this.half;
        }

        public final void setHalf(Integer num) {
            this.half = num;
        }

        public final int getYear() {
            return this.year;
        }

        public final void setYear(int i) {
            this.year = i;
        }

        public final String toString() {
            Resources resources = RocketApplication.Companion.getContext().getResources();
            int i = 0;
            StringBuilder stringBuilder;
            String[] stringArray;
            Integer num;
            if (this.month != null) {
                stringBuilder = new StringBuilder();
                stringArray = resources.getStringArray(C0859R.array.month_names);
                num = this.month;
                if (num != null) {
                    i = num.intValue();
                }
                stringBuilder.append(stringArray[i]);
                stringBuilder.append(' ');
                stringBuilder.append(this.year);
                return stringBuilder.toString();
            } else if (this.quarter != null) {
                stringBuilder = new StringBuilder();
                stringArray = resources.getStringArray(C0859R.array.quarters);
                num = this.quarter;
                if (num != null) {
                    i = num.intValue();
                }
                stringBuilder.append(stringArray[i]);
                stringBuilder.append(' ');
                stringBuilder.append(this.year);
                return stringBuilder.toString();
            } else if (this.half != null) {
                stringBuilder = new StringBuilder();
                stringArray = resources.getStringArray(C0859R.array.half_years);
                num = this.half;
                if (num != null) {
                    i = num.intValue();
                }
                stringBuilder.append(stringArray[i]);
                stringBuilder.append(' ');
                stringBuilder.append(this.year);
                return stringBuilder.toString();
            } else {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(this.year);
                return stringBuilder2.toString();
            }
        }

        public final String kind() {
            if (this.month != null) {
                return "month";
            }
            if (this.quarter != null) {
                return "quarter";
            }
            return this.half != null ? "halfyear" : "year";
        }

        public final String value() {
            Integer num;
            int intValue;
            StringBuilder stringBuilder;
            if (this.month != null) {
                num = this.month;
                if (num == null) {
                    Intrinsics.throwNpe();
                }
                intValue = num.intValue() + 1;
                stringBuilder = new StringBuilder();
                stringBuilder.append(intValue);
                stringBuilder.append('.');
                stringBuilder.append(this.year);
                return stringBuilder.toString();
            } else if (this.quarter != null) {
                num = this.quarter;
                if (num == null) {
                    Intrinsics.throwNpe();
                }
                intValue = num.intValue() + 1;
                stringBuilder = new StringBuilder();
                stringBuilder.append(intValue);
                stringBuilder.append('.');
                stringBuilder.append(this.year);
                return stringBuilder.toString();
            } else if (this.half != null) {
                num = this.half;
                if (num == null) {
                    Intrinsics.throwNpe();
                }
                intValue = num.intValue() + 1;
                stringBuilder = new StringBuilder();
                stringBuilder.append(intValue);
                stringBuilder.append('.');
                stringBuilder.append(this.year);
                return stringBuilder.toString();
            } else {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(this.year);
                return stringBuilder2.toString();
            }
        }
    }

    public abstract String kind();

    public abstract String toString();

    public abstract String value();

    private BudgetDate() {
    }
}
