package android.support.constraint;

import android.util.Log;
import com.bumptech.glide.util.ByteArrayPool;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.InputStream;
import java.io.OutputStream;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: android.support.constraint.R */
public final class C0887R implements AnimatorUpdateListener<InputStream> {

    /* renamed from: android.support.constraint.R$id */
    public static final class id {
    }

    /* renamed from: android.support.constraint.R$styleable */
    public static final class styleable {
        public static final int[] ConstraintLayout_Layout = new int[]{16842948, 16843039, 16843040, 16843071, 16843072, C0859R.attr.barrierAllowsGoneWidgets, C0859R.attr.barrierDirection, C0859R.attr.chainUseRtl, C0859R.attr.constraintSet, C0859R.attr.constraint_referenced_ids, C0859R.attr.layout_constrainedHeight, C0859R.attr.layout_constrainedWidth, C0859R.attr.layout_constraintBaseline_creator, C0859R.attr.layout_constraintBaseline_toBaselineOf, C0859R.attr.layout_constraintBottom_creator, C0859R.attr.layout_constraintBottom_toBottomOf, C0859R.attr.layout_constraintBottom_toTopOf, C0859R.attr.layout_constraintCircle, C0859R.attr.layout_constraintCircleAngle, C0859R.attr.layout_constraintCircleRadius, C0859R.attr.layout_constraintDimensionRatio, C0859R.attr.layout_constraintEnd_toEndOf, C0859R.attr.layout_constraintEnd_toStartOf, C0859R.attr.layout_constraintGuide_begin, C0859R.attr.layout_constraintGuide_end, C0859R.attr.layout_constraintGuide_percent, C0859R.attr.layout_constraintHeight_default, C0859R.attr.layout_constraintHeight_max, C0859R.attr.layout_constraintHeight_min, C0859R.attr.layout_constraintHeight_percent, C0859R.attr.layout_constraintHorizontal_bias, C0859R.attr.layout_constraintHorizontal_chainStyle, C0859R.attr.layout_constraintHorizontal_weight, C0859R.attr.layout_constraintLeft_creator, C0859R.attr.layout_constraintLeft_toLeftOf, C0859R.attr.layout_constraintLeft_toRightOf, C0859R.attr.layout_constraintRight_creator, C0859R.attr.layout_constraintRight_toLeftOf, C0859R.attr.layout_constraintRight_toRightOf, C0859R.attr.layout_constraintStart_toEndOf, C0859R.attr.layout_constraintStart_toStartOf, C0859R.attr.layout_constraintTop_creator, C0859R.attr.layout_constraintTop_toBottomOf, C0859R.attr.layout_constraintTop_toTopOf, C0859R.attr.layout_constraintVertical_bias, C0859R.attr.layout_constraintVertical_chainStyle, C0859R.attr.layout_constraintVertical_weight, C0859R.attr.layout_constraintWidth_default, C0859R.attr.layout_constraintWidth_max, C0859R.attr.layout_constraintWidth_min, C0859R.attr.layout_constraintWidth_percent, C0859R.attr.layout_editor_absoluteX, C0859R.attr.layout_editor_absoluteY, C0859R.attr.layout_goneMarginBottom, C0859R.attr.layout_goneMarginEnd, C0859R.attr.layout_goneMarginLeft, C0859R.attr.layout_goneMarginRight, C0859R.attr.layout_goneMarginStart, C0859R.attr.layout_goneMarginTop, C0859R.attr.layout_optimizationLevel};
        public static final int ConstraintLayout_Layout_android_maxHeight = 2;
        public static final int ConstraintLayout_Layout_android_maxWidth = 1;
        public static final int ConstraintLayout_Layout_android_minHeight = 4;
        public static final int ConstraintLayout_Layout_android_minWidth = 3;
        public static final int ConstraintLayout_Layout_android_orientation = 0;
        public static final int ConstraintLayout_Layout_barrierAllowsGoneWidgets = 5;
        public static final int ConstraintLayout_Layout_barrierDirection = 6;
        public static final int ConstraintLayout_Layout_constraintSet = 8;
        public static final int ConstraintLayout_Layout_constraint_referenced_ids = 9;
        public static final int ConstraintLayout_Layout_layout_constrainedHeight = 10;
        public static final int ConstraintLayout_Layout_layout_constrainedWidth = 11;
        public static final int ConstraintLayout_Layout_layout_constraintBaseline_creator = 12;
        public static final int ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf = 13;
        public static final int ConstraintLayout_Layout_layout_constraintBottom_creator = 14;
        public static final int ConstraintLayout_Layout_layout_constraintBottom_toBottomOf = 15;
        public static final int ConstraintLayout_Layout_layout_constraintBottom_toTopOf = 16;
        public static final int ConstraintLayout_Layout_layout_constraintCircle = 17;
        public static final int ConstraintLayout_Layout_layout_constraintCircleAngle = 18;
        public static final int ConstraintLayout_Layout_layout_constraintCircleRadius = 19;
        public static final int ConstraintLayout_Layout_layout_constraintDimensionRatio = 20;
        public static final int ConstraintLayout_Layout_layout_constraintEnd_toEndOf = 21;
        public static final int ConstraintLayout_Layout_layout_constraintEnd_toStartOf = 22;
        public static final int ConstraintLayout_Layout_layout_constraintGuide_begin = 23;
        public static final int ConstraintLayout_Layout_layout_constraintGuide_end = 24;
        public static final int ConstraintLayout_Layout_layout_constraintGuide_percent = 25;
        public static final int ConstraintLayout_Layout_layout_constraintHeight_default = 26;
        public static final int ConstraintLayout_Layout_layout_constraintHeight_max = 27;
        public static final int ConstraintLayout_Layout_layout_constraintHeight_min = 28;
        public static final int ConstraintLayout_Layout_layout_constraintHeight_percent = 29;
        public static final int ConstraintLayout_Layout_layout_constraintHorizontal_bias = 30;
        public static final int ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle = 31;
        public static final int ConstraintLayout_Layout_layout_constraintHorizontal_weight = 32;
        public static final int ConstraintLayout_Layout_layout_constraintLeft_creator = 33;
        public static final int ConstraintLayout_Layout_layout_constraintLeft_toLeftOf = 34;
        public static final int ConstraintLayout_Layout_layout_constraintLeft_toRightOf = 35;
        public static final int ConstraintLayout_Layout_layout_constraintRight_creator = 36;
        public static final int ConstraintLayout_Layout_layout_constraintRight_toLeftOf = 37;
        public static final int ConstraintLayout_Layout_layout_constraintRight_toRightOf = 38;
        public static final int ConstraintLayout_Layout_layout_constraintStart_toEndOf = 39;
        public static final int ConstraintLayout_Layout_layout_constraintStart_toStartOf = 40;
        public static final int ConstraintLayout_Layout_layout_constraintTop_creator = 41;
        public static final int ConstraintLayout_Layout_layout_constraintTop_toBottomOf = 42;
        public static final int ConstraintLayout_Layout_layout_constraintTop_toTopOf = 43;
        public static final int ConstraintLayout_Layout_layout_constraintVertical_bias = 44;
        public static final int ConstraintLayout_Layout_layout_constraintVertical_chainStyle = 45;
        public static final int ConstraintLayout_Layout_layout_constraintVertical_weight = 46;
        public static final int ConstraintLayout_Layout_layout_constraintWidth_default = 47;
        public static final int ConstraintLayout_Layout_layout_constraintWidth_max = 48;
        public static final int ConstraintLayout_Layout_layout_constraintWidth_min = 49;
        public static final int ConstraintLayout_Layout_layout_constraintWidth_percent = 50;
        public static final int ConstraintLayout_Layout_layout_editor_absoluteX = 51;
        public static final int ConstraintLayout_Layout_layout_editor_absoluteY = 52;
        public static final int ConstraintLayout_Layout_layout_goneMarginBottom = 53;
        public static final int ConstraintLayout_Layout_layout_goneMarginEnd = 54;
        public static final int ConstraintLayout_Layout_layout_goneMarginLeft = 55;
        public static final int ConstraintLayout_Layout_layout_goneMarginRight = 56;
        public static final int ConstraintLayout_Layout_layout_goneMarginStart = 57;
        public static final int ConstraintLayout_Layout_layout_goneMarginTop = 58;
        public static final int ConstraintLayout_Layout_layout_optimizationLevel = 59;
        public static final int[] ConstraintLayout_placeholder = new int[]{C0859R.attr.content, C0859R.attr.emptyVisibility};
        public static final int[] ConstraintSet = new int[]{16842948, 16842960, 16842972, 16842996, 16842997, 16842999, 16843000, 16843001, 16843002, 16843551, 16843552, 16843553, 16843554, 16843555, 16843556, 16843557, 16843558, 16843559, 16843560, 16843701, 16843702, 16843770, 16843840, C0859R.attr.layout_constrainedHeight, C0859R.attr.layout_constrainedWidth, C0859R.attr.layout_constraintBaseline_creator, C0859R.attr.layout_constraintBaseline_toBaselineOf, C0859R.attr.layout_constraintBottom_creator, C0859R.attr.layout_constraintBottom_toBottomOf, C0859R.attr.layout_constraintBottom_toTopOf, C0859R.attr.layout_constraintCircle, C0859R.attr.layout_constraintCircleAngle, C0859R.attr.layout_constraintCircleRadius, C0859R.attr.layout_constraintDimensionRatio, C0859R.attr.layout_constraintEnd_toEndOf, C0859R.attr.layout_constraintEnd_toStartOf, C0859R.attr.layout_constraintGuide_begin, C0859R.attr.layout_constraintGuide_end, C0859R.attr.layout_constraintGuide_percent, C0859R.attr.layout_constraintHeight_default, C0859R.attr.layout_constraintHeight_max, C0859R.attr.layout_constraintHeight_min, C0859R.attr.layout_constraintHeight_percent, C0859R.attr.layout_constraintHorizontal_bias, C0859R.attr.layout_constraintHorizontal_chainStyle, C0859R.attr.layout_constraintHorizontal_weight, C0859R.attr.layout_constraintLeft_creator, C0859R.attr.layout_constraintLeft_toLeftOf, C0859R.attr.layout_constraintLeft_toRightOf, C0859R.attr.layout_constraintRight_creator, C0859R.attr.layout_constraintRight_toLeftOf, C0859R.attr.layout_constraintRight_toRightOf, C0859R.attr.layout_constraintStart_toEndOf, C0859R.attr.layout_constraintStart_toStartOf, C0859R.attr.layout_constraintTop_creator, C0859R.attr.layout_constraintTop_toBottomOf, C0859R.attr.layout_constraintTop_toTopOf, C0859R.attr.layout_constraintVertical_bias, C0859R.attr.layout_constraintVertical_chainStyle, C0859R.attr.layout_constraintVertical_weight, C0859R.attr.layout_constraintWidth_default, C0859R.attr.layout_constraintWidth_max, C0859R.attr.layout_constraintWidth_min, C0859R.attr.layout_constraintWidth_percent, C0859R.attr.layout_editor_absoluteX, C0859R.attr.layout_editor_absoluteY, C0859R.attr.layout_goneMarginBottom, C0859R.attr.layout_goneMarginEnd, C0859R.attr.layout_goneMarginLeft, C0859R.attr.layout_goneMarginRight, C0859R.attr.layout_goneMarginStart, C0859R.attr.layout_goneMarginTop};
        public static final int ConstraintSet_android_alpha = 9;
        public static final int ConstraintSet_android_elevation = 22;
        public static final int ConstraintSet_android_id = 1;
        public static final int ConstraintSet_android_layout_height = 4;
        public static final int ConstraintSet_android_layout_marginBottom = 8;
        public static final int ConstraintSet_android_layout_marginEnd = 20;
        public static final int ConstraintSet_android_layout_marginLeft = 5;
        public static final int ConstraintSet_android_layout_marginRight = 7;
        public static final int ConstraintSet_android_layout_marginStart = 19;
        public static final int ConstraintSet_android_layout_marginTop = 6;
        public static final int ConstraintSet_android_layout_width = 3;
        public static final int ConstraintSet_android_orientation = 0;
        public static final int ConstraintSet_android_rotation = 16;
        public static final int ConstraintSet_android_rotationX = 17;
        public static final int ConstraintSet_android_rotationY = 18;
        public static final int ConstraintSet_android_scaleX = 14;
        public static final int ConstraintSet_android_scaleY = 15;
        public static final int ConstraintSet_android_transformPivotX = 10;
        public static final int ConstraintSet_android_transformPivotY = 11;
        public static final int ConstraintSet_android_translationX = 12;
        public static final int ConstraintSet_android_translationY = 13;
        public static final int ConstraintSet_android_translationZ = 21;
        public static final int ConstraintSet_android_visibility = 2;
        public static final int ConstraintSet_layout_constraintBaseline_creator = 25;
        public static final int ConstraintSet_layout_constraintBaseline_toBaselineOf = 26;
        public static final int ConstraintSet_layout_constraintBottom_creator = 27;
        public static final int ConstraintSet_layout_constraintBottom_toBottomOf = 28;
        public static final int ConstraintSet_layout_constraintBottom_toTopOf = 29;
        public static final int ConstraintSet_layout_constraintCircle = 30;
        public static final int ConstraintSet_layout_constraintCircleAngle = 31;
        public static final int ConstraintSet_layout_constraintCircleRadius = 32;
        public static final int ConstraintSet_layout_constraintDimensionRatio = 33;
        public static final int ConstraintSet_layout_constraintEnd_toEndOf = 34;
        public static final int ConstraintSet_layout_constraintEnd_toStartOf = 35;
        public static final int ConstraintSet_layout_constraintGuide_begin = 36;
        public static final int ConstraintSet_layout_constraintGuide_end = 37;
        public static final int ConstraintSet_layout_constraintGuide_percent = 38;
        public static final int ConstraintSet_layout_constraintHeight_default = 39;
        public static final int ConstraintSet_layout_constraintHeight_max = 40;
        public static final int ConstraintSet_layout_constraintHeight_min = 41;
        public static final int ConstraintSet_layout_constraintHorizontal_bias = 43;
        public static final int ConstraintSet_layout_constraintHorizontal_chainStyle = 44;
        public static final int ConstraintSet_layout_constraintHorizontal_weight = 45;
        public static final int ConstraintSet_layout_constraintLeft_creator = 46;
        public static final int ConstraintSet_layout_constraintLeft_toLeftOf = 47;
        public static final int ConstraintSet_layout_constraintLeft_toRightOf = 48;
        public static final int ConstraintSet_layout_constraintRight_creator = 49;
        public static final int ConstraintSet_layout_constraintRight_toLeftOf = 50;
        public static final int ConstraintSet_layout_constraintRight_toRightOf = 51;
        public static final int ConstraintSet_layout_constraintStart_toEndOf = 52;
        public static final int ConstraintSet_layout_constraintStart_toStartOf = 53;
        public static final int ConstraintSet_layout_constraintTop_creator = 54;
        public static final int ConstraintSet_layout_constraintTop_toBottomOf = 55;
        public static final int ConstraintSet_layout_constraintTop_toTopOf = 56;
        public static final int ConstraintSet_layout_constraintVertical_bias = 57;
        public static final int ConstraintSet_layout_constraintVertical_chainStyle = 58;
        public static final int ConstraintSet_layout_constraintVertical_weight = 59;
        public static final int ConstraintSet_layout_constraintWidth_default = 60;
        public static final int ConstraintSet_layout_constraintWidth_max = 61;
        public static final int ConstraintSet_layout_constraintWidth_min = 62;
        public static final int ConstraintSet_layout_editor_absoluteX = 64;
        public static final int ConstraintSet_layout_editor_absoluteY = 65;
        public static final int ConstraintSet_layout_goneMarginBottom = 66;
        public static final int ConstraintSet_layout_goneMarginEnd = 67;
        public static final int ConstraintSet_layout_goneMarginLeft = 68;
        public static final int ConstraintSet_layout_goneMarginRight = 69;
        public static final int ConstraintSet_layout_goneMarginStart = 70;
        public static final int ConstraintSet_layout_goneMarginTop = 71;
        public static final int[] LinearConstraintLayout = new int[]{16842948};
    }

    public final String getId() {
        return "";
    }

    private static boolean encode(InputStream inputStream, OutputStream outputStream) {
        byte[] bytes = ByteArrayPool.get().getBytes();
        while (true) {
            try {
                int read = inputStream.read(bytes);
                if (read != -1) {
                    outputStream.write(bytes, 0, read);
                } else {
                    ByteArrayPool.get().releaseBytes(bytes);
                    return true;
                }
            } catch (InputStream inputStream2) {
                if (Log.isLoggable("StreamEncoder", 3) != null) {
                    Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", inputStream2);
                }
                ByteArrayPool.get().releaseBytes(bytes);
                return false;
            } catch (Throwable th) {
                ByteArrayPool.get().releaseBytes(bytes);
            }
        }
    }
}
