package com.mikepenz.materialize.color;

import android.graphics.Color;
import android.util.Log;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.FireCMManager;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;

public final class Material {

    public enum Amber {
        _50("#FFF8E1", C0859R.color.md_amber_50),
        _100("#FFECB3", C0859R.color.md_amber_100),
        _200("#FFE082", C0859R.color.md_amber_200),
        _300("#FFD54F", C0859R.color.md_amber_300),
        _400("#FFCA28", C0859R.color.md_amber_400),
        _500("#FFCA28", C0859R.color.md_amber_500),
        _600("#FFB300", C0859R.color.md_amber_600),
        _700("#FFA000", C0859R.color.md_amber_700),
        _800("#FF8F00", C0859R.color.md_amber_800),
        _900("#FF6F00", C0859R.color.md_amber_900),
        _A100("#FFE57F", C0859R.color.md_amber_A100),
        _A200("#FFD740", C0859R.color.md_amber_A200),
        _A400("#FFC400", C0859R.color.md_amber_A400),
        _A700("#FFAB00", C0859R.color.md_amber_A700);
        
        String color;
        int resource;

        private Amber(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Black {
        _1000("#000000", C0859R.color.md_black_1000);
        
        String color;
        int resource;

        private Black(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Blue {
        _50("#E3F2FD", C0859R.color.md_blue_50),
        _100("#BBDEFB", C0859R.color.md_blue_100),
        _200("#90CAF9", C0859R.color.md_blue_200),
        _300("#64B5F6", C0859R.color.md_blue_300),
        _400("#42A5F5", C0859R.color.md_blue_400),
        _500("#2196F3", C0859R.color.md_blue_500),
        _600("#1E88E5", C0859R.color.md_blue_600),
        _700("#1976D2", C0859R.color.md_blue_700),
        _800("#1565C0", C0859R.color.md_blue_800),
        _900("#0D47A1", C0859R.color.md_blue_900),
        _A100("#82B1FF", C0859R.color.md_blue_A100),
        _A200("#448AFF", C0859R.color.md_blue_A200),
        _A400("#2979FF", C0859R.color.md_blue_A400),
        _A700("#2962FF", C0859R.color.md_blue_A700);
        
        String color;
        int resource;

        private Blue(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum BlueGrey {
        _50("#ECEFF1", C0859R.color.md_blue_grey_50),
        _100("#CFD8DC", C0859R.color.md_blue_grey_100),
        _200("#B0BEC5", C0859R.color.md_blue_grey_200),
        _300("#90A4AE", C0859R.color.md_blue_grey_300),
        _400("#78909C", C0859R.color.md_blue_grey_400),
        _500("#607D8B", C0859R.color.md_blue_grey_500),
        _600("#546E7A", C0859R.color.md_blue_grey_600),
        _700("#455A64", C0859R.color.md_blue_grey_700),
        _800("#37474F", C0859R.color.md_blue_grey_800),
        _900("#263238", C0859R.color.md_blue_grey_900);
        
        String color;
        int resource;

        private BlueGrey(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Brown {
        _50("#EFEBE9", C0859R.color.md_brown_50),
        _100("#D7CCC8", C0859R.color.md_brown_100),
        _200("#BCAAA4", C0859R.color.md_brown_200),
        _300("#A1887F", C0859R.color.md_brown_300),
        _400("#8D6E63", C0859R.color.md_brown_400),
        _500("#795548", C0859R.color.md_brown_500),
        _600("#6D4C41", C0859R.color.md_brown_600),
        _700("#5D4037", C0859R.color.md_brown_700),
        _800("#4E342E", C0859R.color.md_brown_800),
        _900("#3E2723", C0859R.color.md_brown_900);
        
        String color;
        int resource;

        private Brown(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Cyan {
        _50("#E0F7FA", C0859R.color.md_cyan_50),
        _100("#B2EBF2", C0859R.color.md_cyan_100),
        _200("#80DEEA", C0859R.color.md_cyan_200),
        _300("#4DD0E1", C0859R.color.md_cyan_300),
        _400("#26C6DA", C0859R.color.md_cyan_400),
        _500("#00BCD4", C0859R.color.md_cyan_500),
        _600("#00ACC1", C0859R.color.md_cyan_600),
        _700("#0097A7", C0859R.color.md_cyan_700),
        _800("#00838F", C0859R.color.md_cyan_800),
        _900("#006064", C0859R.color.md_cyan_900),
        _A100("#84FFFF", C0859R.color.md_cyan_A100),
        _A200("#18FFFF", C0859R.color.md_cyan_A200),
        _A400("#00E5FF", C0859R.color.md_cyan_A400),
        _A700("#00B8D4", C0859R.color.md_cyan_A700);
        
        String color;
        int resource;

        private Cyan(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum DeepOrange {
        _50("#FBE9E7", C0859R.color.md_deep_orange_50),
        _100("#FFCCBC", C0859R.color.md_deep_orange_100),
        _200("#FFAB91", C0859R.color.md_deep_orange_200),
        _300("#FF8A65", C0859R.color.md_deep_orange_300),
        _400("#FF7043", C0859R.color.md_deep_orange_400),
        _500("#FF5722", C0859R.color.md_deep_orange_500),
        _600("#F4511E", C0859R.color.md_deep_orange_600),
        _700("#E64A19", C0859R.color.md_deep_orange_700),
        _800("#D84315", C0859R.color.md_deep_orange_800),
        _900("#BF360C", C0859R.color.md_deep_orange_900),
        _A100("#FF6E40", C0859R.color.md_deep_orange_A100),
        _A200("#FFAB40", C0859R.color.md_deep_orange_A200),
        _A400("#FF3D00", C0859R.color.md_deep_orange_A400),
        _A700("#DD2C00", C0859R.color.md_deep_orange_A700);
        
        String color;
        int resource;

        private DeepOrange(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum DeepPurple {
        _50("#EDE7F6", C0859R.color.md_purple_50),
        _100("#D1C4E9", C0859R.color.md_purple_100),
        _200("#B39DDB", C0859R.color.md_purple_200),
        _300("#9575CD", C0859R.color.md_purple_300),
        _400("#7E57C2", C0859R.color.md_purple_400),
        _500("#673AB7", C0859R.color.md_purple_500),
        _600("#5E35B1", C0859R.color.md_purple_600),
        _700("#512DA8", C0859R.color.md_purple_700),
        _800("#4527A0", C0859R.color.md_purple_800),
        _900("#311B92", C0859R.color.md_purple_900),
        _A100("#B388FF", C0859R.color.md_purple_A100),
        _A200("#7C4DFF", C0859R.color.md_purple_A200),
        _A400("#651FFF", C0859R.color.md_purple_A400),
        _A700("#6200EA", C0859R.color.md_purple_A700);
        
        String color;
        int resource;

        private DeepPurple(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Green {
        _50("#E8F5E9", C0859R.color.md_green_50),
        _100("#C8E6C9", C0859R.color.md_green_100),
        _200("#A5D6A7", C0859R.color.md_green_200),
        _300("#81C784", C0859R.color.md_green_300),
        _400("#66BB6A", C0859R.color.md_green_400),
        _500("#4CAF50", C0859R.color.md_green_500),
        _600("#43A047", C0859R.color.md_green_600),
        _700("#388E3C", C0859R.color.md_green_700),
        _800("#2E7D32", C0859R.color.md_green_800),
        _900("#1B5E20", C0859R.color.md_green_900),
        _A100("#B9F6CA", C0859R.color.md_green_A100),
        _A200("#69F0AE", C0859R.color.md_green_A200),
        _A400("#00E676", C0859R.color.md_green_A400),
        _A700("#00C853", C0859R.color.md_green_A700);
        
        String color;
        int resource;

        private Green(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Grey {
        _50("#FAFAFA", C0859R.color.md_grey_50),
        _100("#F5F5F5", C0859R.color.md_grey_100),
        _200("#EEEEEE", C0859R.color.md_grey_200),
        _300("#E0E0E0", C0859R.color.md_grey_300),
        _400("#BDBDBD", C0859R.color.md_grey_400),
        _500("#9E9E9E", C0859R.color.md_grey_500),
        _600("#757575", C0859R.color.md_grey_600),
        _700("#616161", C0859R.color.md_grey_700),
        _800("#424242", C0859R.color.md_grey_800),
        _900("#212121", C0859R.color.md_grey_900);
        
        String color;
        int resource;

        private Grey(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Indigo {
        _50("#E8EAF6", C0859R.color.md_indigo_50),
        _100("#C5CAE9", C0859R.color.md_indigo_100),
        _200("#9FA8DA", C0859R.color.md_indigo_200),
        _300("#7986CB", C0859R.color.md_indigo_300),
        _400("#5C6BC0", C0859R.color.md_indigo_400),
        _500("#3F51B5", C0859R.color.md_indigo_500),
        _600("#3949AB", C0859R.color.md_indigo_600),
        _700("#303F9F", C0859R.color.md_indigo_700),
        _800("#283593", C0859R.color.md_indigo_800),
        _900("#1A237E", C0859R.color.md_indigo_900),
        _A100("#8C9EFF", C0859R.color.md_indigo_A100),
        _A200("#536DFE", C0859R.color.md_indigo_A200),
        _A400("#3D5AFE", C0859R.color.md_indigo_A400),
        _A700("#304FFE", C0859R.color.md_indigo_A700);
        
        String color;
        int resource;

        private Indigo(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum LightBlue {
        _50("#E1F5FE", C0859R.color.md_light_blue_50),
        _100("#B3E5FC", C0859R.color.md_light_blue_100),
        _200("#81D4FA", C0859R.color.md_light_blue_200),
        _300("#4FC3F7", C0859R.color.md_light_blue_300),
        _400("#29B6F6", C0859R.color.md_light_blue_400),
        _500("#03A9F4", C0859R.color.md_light_blue_500),
        _600("#039BE5", C0859R.color.md_light_blue_600),
        _700("#0288D1", C0859R.color.md_light_blue_700),
        _800("#0277BD", C0859R.color.md_light_blue_800),
        _900("#01579B", C0859R.color.md_light_blue_900),
        _A100("#80D8FF", C0859R.color.md_light_blue_A100),
        _A200("#40C4FF", C0859R.color.md_light_blue_A200),
        _A400("#00B0FF", C0859R.color.md_light_blue_A400),
        _A700("#0091EA", C0859R.color.md_light_blue_A700);
        
        String color;
        int resource;

        private LightBlue(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum LightGreen {
        _50("#F1F8E9", C0859R.color.md_light_green_50),
        _100("#DCEDC8", C0859R.color.md_light_green_100),
        _200("#C5E1A5", C0859R.color.md_light_green_200),
        _300("#AED581", C0859R.color.md_light_green_300),
        _400("#9CCC65", C0859R.color.md_light_green_400),
        _500("#8BC34A", C0859R.color.md_light_green_500),
        _600("#7CB342", C0859R.color.md_light_green_600),
        _700("#689F38", C0859R.color.md_light_green_700),
        _800("#558B2F", C0859R.color.md_light_green_800),
        _900("#33691E", C0859R.color.md_light_green_900),
        _A100("#CCFF90", C0859R.color.md_light_green_A100),
        _A200("#B2FF59", C0859R.color.md_light_green_A200),
        _A400("#76FF03", C0859R.color.md_light_green_A400),
        _A700("#64DD17", C0859R.color.md_light_green_A700);
        
        String color;
        int resource;

        private LightGreen(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Lime {
        _50("#F9FBE7", C0859R.color.md_lime_50),
        _100("#F0F4C3", C0859R.color.md_lime_100),
        _200("#E6EE9C", C0859R.color.md_lime_200),
        _300("#DCE775", C0859R.color.md_lime_300),
        _400("#D4E157", C0859R.color.md_lime_400),
        _500("#CDDC39", C0859R.color.md_lime_500),
        _600("#C0CA33", C0859R.color.md_lime_600),
        _700("#AFB42B", C0859R.color.md_lime_700),
        _800("#9E9D24", C0859R.color.md_lime_800),
        _900("#827717", C0859R.color.md_lime_900),
        _A100("#F4FF81", C0859R.color.md_lime_A100),
        _A200("#EEFF41", C0859R.color.md_lime_A200),
        _A400("#C6FF00", C0859R.color.md_lime_A400),
        _A700("#AEEA00", C0859R.color.md_lime_A700);
        
        String color;
        int resource;

        private Lime(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Orange {
        _50("#FFF3E0", C0859R.color.md_orange_50),
        _100("#FFE0B2", C0859R.color.md_orange_100),
        _200("#FFCC80", C0859R.color.md_orange_200),
        _300("#FFB74D", C0859R.color.md_orange_300),
        _400("#FFA726", C0859R.color.md_orange_400),
        _500("#FF9800", C0859R.color.md_orange_500),
        _600("#FB8C00", C0859R.color.md_orange_600),
        _700("#F57C00", C0859R.color.md_orange_700),
        _800("#EF6C00", C0859R.color.md_orange_800),
        _900("#E65100", C0859R.color.md_orange_900),
        _A100("#FFD180", C0859R.color.md_orange_A100),
        _A200("#FFAB40", C0859R.color.md_orange_A200),
        _A400("#FF9100", C0859R.color.md_orange_A400),
        _A700("#FF6D00", C0859R.color.md_orange_A700);
        
        String color;
        int resource;

        private Orange(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Pink {
        _50("#E91E63", C0859R.color.md_pink_50),
        _100("#F8BBD0", C0859R.color.md_pink_100),
        _200("#F48FB1", C0859R.color.md_pink_200),
        _300("#F06292", C0859R.color.md_pink_300),
        _400("#EC407A", C0859R.color.md_pink_400),
        _500("#E91E63", C0859R.color.md_pink_500),
        _600("#D81B60", C0859R.color.md_pink_600),
        _700("#C2185B", C0859R.color.md_pink_700),
        _800("#AD1457", C0859R.color.md_pink_800),
        _900("#880E4F", C0859R.color.md_pink_900),
        _A100("#FF80AB", C0859R.color.md_pink_A100),
        _A200("#FF4081", C0859R.color.md_pink_A200),
        _A400("#F50057", C0859R.color.md_pink_A400),
        _A700("#C51162", C0859R.color.md_pink_A700);
        
        String color;
        int resource;

        private Pink(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Purple {
        _50("#F3E5F5", C0859R.color.md_purple_50),
        _100("#E1BEE7", C0859R.color.md_purple_100),
        _200("#CE93D8", C0859R.color.md_purple_200),
        _300("#BA68C8", C0859R.color.md_purple_300),
        _400("#AB47BC", C0859R.color.md_purple_400),
        _500("#9C27B0", C0859R.color.md_purple_500),
        _600("#8E24AA", C0859R.color.md_purple_600),
        _700("#7B1FA2", C0859R.color.md_purple_700),
        _800("#6A1B9A", C0859R.color.md_purple_800),
        _900("#4A148C", C0859R.color.md_purple_900),
        _A100("#EA80FC", C0859R.color.md_purple_A100),
        _A200("#E040FB", C0859R.color.md_purple_A200),
        _A400("#D500F9", C0859R.color.md_purple_A400),
        _A700("#AA00FF", C0859R.color.md_purple_A700);
        
        String color;
        int resource;

        private Purple(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Red {
        _50("#FFEBEE", C0859R.color.md_red_50),
        _100("#FFCDD2", C0859R.color.md_red_100),
        _200("#EF9A9A", C0859R.color.md_red_200),
        _300("#E57373", C0859R.color.md_red_300),
        _400("#EF5350", C0859R.color.md_red_400),
        _500("#F44336", C0859R.color.md_red_500),
        _600("#E53935", C0859R.color.md_red_600),
        _700("#D32F2F", C0859R.color.md_red_700),
        _800("#C62828", C0859R.color.md_red_800),
        _900("#B71C1C", C0859R.color.md_red_900),
        _A100("#FF8A80", C0859R.color.md_red_A100),
        _A200("#FF5252", C0859R.color.md_red_A200),
        _A400("#FF1744", C0859R.color.md_red_A400),
        _A700("#D50000", C0859R.color.md_red_A700);
        
        String color;
        int resource;

        private Red(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Teal {
        _50("#E0F2F1", C0859R.color.md_teal_50),
        _100("#B2DFDB", C0859R.color.md_teal_100),
        _200("#80CBC4", C0859R.color.md_teal_200),
        _300("#4DB6AC", C0859R.color.md_teal_300),
        _400("#26A69A", C0859R.color.md_teal_400),
        _500("#009688", C0859R.color.md_teal_500),
        _600("#00897B", C0859R.color.md_teal_600),
        _700("#00796B", C0859R.color.md_teal_700),
        _800("#00695C", C0859R.color.md_teal_800),
        _900("#004D40", C0859R.color.md_teal_900),
        _A100("#A7FFEB", C0859R.color.md_teal_A100),
        _A200("#64FFDA", C0859R.color.md_teal_A200),
        _A400("#1DE9B6", C0859R.color.md_teal_A400),
        _A700("#00BFA5", C0859R.color.md_teal_A700);
        
        String color;
        int resource;

        private Teal(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum White {
        _1000("#FFFFFF", C0859R.color.md_white_1000);
        
        String color;
        int resource;

        private White(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public enum Yellow {
        _50("#FFFDE7", C0859R.color.md_yellow_50),
        _100("#FFF9C4", C0859R.color.md_yellow_100),
        _200("#FFF59D", C0859R.color.md_yellow_200),
        _300("#FFF176", C0859R.color.md_yellow_300),
        _400("#FFEE58", C0859R.color.md_yellow_400),
        _500("#FFEB3B", C0859R.color.md_yellow_500),
        _600("#FDD835", C0859R.color.md_yellow_600),
        _700("#FBC02D", C0859R.color.md_yellow_700),
        _800("#F9A825", C0859R.color.md_yellow_800),
        _900("#F57F17", C0859R.color.md_yellow_900),
        _A100("#FFFF8D", C0859R.color.md_yellow_A100),
        _A200("#FFFF00", C0859R.color.md_yellow_A200),
        _A400("#FFEA00", C0859R.color.md_yellow_A400),
        _A700("#FFD600", C0859R.color.md_yellow_A700);
        
        String color;
        int resource;

        private Yellow(String str, int i) {
            this.color = str;
            this.resource = i;
        }

        public final String getAsString() {
            return this.color;
        }

        public final int getAsColor() {
            return Color.parseColor(this.color);
        }

        public final int getAsResource() {
            return this.resource;
        }
    }

    public static class Elements implements Provider<FireCMManager> {
        private final Provider<Authorization> authorizationProvider;
        private final Provider<HeaderManager> headerManagerProvider;
        private final Material module$11baabfc;
        private final Provider<RocketAPI> rocketAPIProvider;

        public enum Dark {
            ICON("#8AFFFFFF", C0859R.color.md_dark_primary_icon),
            TEXT("#DEFFFFFF", C0859R.color.md_dark_primary_text),
            SECONDARY_TEXT("#8AFFFFFF", C0859R.color.md_dark_secondary),
            SECONDARY_ICON("#8AFFFFFF", C0859R.color.md_dark_secondary),
            DISABLED_TEXT("#42FFFFFF", C0859R.color.md_dark_disabled),
            HINT_TEXT("#42FFFFFF", C0859R.color.md_dark_disabled),
            DIVIDER("#1FFFFFFF", C0859R.color.md_dark_dividers);
            
            String color;
            int resource;

            private Dark(String str, int i) {
                this.color = str;
                this.resource = i;
            }

            public final String getAsString() {
                return this.color;
            }

            public final int getAsColor() {
                return Color.parseColor(this.color);
            }

            public final int getAsResource() {
                return this.resource;
            }
        }

        public enum Light {
            ICON("#8A000000", C0859R.color.md_light_primary_icon),
            TEXT("#DE000000", C0859R.color.md_light_primary_text),
            SECONDARY_TEXT("#8A000000", C0859R.color.md_light_secondary),
            SECONDARY_ICON("#8A000000", C0859R.color.md_light_secondary),
            DISABLED_TEXT("#42000000", C0859R.color.md_light_disabled),
            HINT_TEXT("#42000000", C0859R.color.md_light_disabled),
            DIVIDER("#1F000000", C0859R.color.md_light_dividers);
            
            String color;
            int resource;

            private Light(String str, int i) {
                this.color = str;
                this.resource = i;
            }

            public final String getAsString() {
                return this.color;
            }

            public final int getAsColor() {
                return Color.parseColor(this.color);
            }

            public final int getAsResource() {
                return this.resource;
            }
        }

        public Elements(Material material, Provider<Authorization> provider, Provider<RocketAPI> provider2, Provider<HeaderManager> provider3) {
            this.module$11baabfc = material;
            this.authorizationProvider = provider;
            this.rocketAPIProvider = provider2;
            this.headerManagerProvider = provider3;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Authorization authorization = (Authorization) this.authorizationProvider.get();
            RocketAPI rocketAPI = (RocketAPI) this.rocketAPIProvider.get();
            HeaderManager headerManager = (HeaderManager) this.headerManagerProvider.get();
            Intrinsics.checkParameterIsNotNull(authorization, "authorization");
            Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketAPI");
            Intrinsics.checkParameterIsNotNull(headerManager, "headerManager");
            Log.v("MessageModule", "Creating FireCMManager");
            return new FireCMManager(authorization, rocketAPI, headerManager);
        }
    }

    public Material() {
        Log.v("MessageModule", "MessageModule");
    }
}
