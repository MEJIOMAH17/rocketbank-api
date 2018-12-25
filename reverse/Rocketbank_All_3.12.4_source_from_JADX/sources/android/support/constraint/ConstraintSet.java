package android.support.constraint;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.constraint.ConstraintLayout.LayoutParams;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class ConstraintSet {
    private static final int[] VISIBILITY_FLAGS = new int[]{0, 4, 8};
    private static SparseIntArray mapToConstant;
    private HashMap<Integer, Constraint> mConstraints = new HashMap();

    static class Constraint {
        public float alpha;
        public boolean applyElevation;
        public int baselineToBaseline;
        public int bottomMargin;
        public int bottomToBottom;
        public int bottomToTop;
        public float circleAngle;
        public int circleConstraint;
        public int circleRadius;
        public boolean constrainedHeight;
        public boolean constrainedWidth;
        public String dimensionRatio;
        public int editorAbsoluteX;
        public int editorAbsoluteY;
        public float elevation;
        public int endMargin;
        public int endToEnd;
        public int endToStart;
        public int goneBottomMargin;
        public int goneEndMargin;
        public int goneLeftMargin;
        public int goneRightMargin;
        public int goneStartMargin;
        public int goneTopMargin;
        public int guideBegin;
        public int guideEnd;
        public float guidePercent;
        public int heightDefault;
        public int heightMax;
        public int heightMin;
        public float heightPercent;
        public float horizontalBias;
        public int horizontalChainStyle;
        public float horizontalWeight;
        public int leftMargin;
        public int leftToLeft;
        public int leftToRight;
        public int mBarrierDirection;
        public int mHeight;
        public int mHelperType;
        boolean mIsGuideline;
        public int[] mReferenceIds;
        int mViewId;
        public int mWidth;
        public int orientation;
        public int rightMargin;
        public int rightToLeft;
        public int rightToRight;
        public float rotation;
        public float rotationX;
        public float rotationY;
        public float scaleX;
        public float scaleY;
        public int startMargin;
        public int startToEnd;
        public int startToStart;
        public int topMargin;
        public int topToBottom;
        public int topToTop;
        public float transformPivotX;
        public float transformPivotY;
        public float translationX;
        public float translationY;
        public float translationZ;
        public float verticalBias;
        public int verticalChainStyle;
        public float verticalWeight;
        public int visibility;
        public int widthDefault;
        public int widthMax;
        public int widthMin;
        public float widthPercent;

        private Constraint() {
            this.mIsGuideline = false;
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = BitmapDescriptorFactory.HUE_RED;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.leftMargin = -1;
            this.rightMargin = -1;
            this.topMargin = -1;
            this.bottomMargin = -1;
            this.endMargin = -1;
            this.startMargin = -1;
            this.visibility = 0;
            this.goneLeftMargin = -1;
            this.goneTopMargin = -1;
            this.goneRightMargin = -1;
            this.goneBottomMargin = -1;
            this.goneEndMargin = -1;
            this.goneStartMargin = -1;
            this.verticalWeight = BitmapDescriptorFactory.HUE_RED;
            this.horizontalWeight = BitmapDescriptorFactory.HUE_RED;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.alpha = 1.0f;
            this.applyElevation = false;
            this.elevation = BitmapDescriptorFactory.HUE_RED;
            this.rotation = BitmapDescriptorFactory.HUE_RED;
            this.rotationX = BitmapDescriptorFactory.HUE_RED;
            this.rotationY = BitmapDescriptorFactory.HUE_RED;
            this.scaleX = 1.0f;
            this.scaleY = 1.0f;
            this.transformPivotX = Float.NaN;
            this.transformPivotY = Float.NaN;
            this.translationX = BitmapDescriptorFactory.HUE_RED;
            this.translationY = BitmapDescriptorFactory.HUE_RED;
            this.translationZ = BitmapDescriptorFactory.HUE_RED;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.widthDefault = -1;
            this.heightDefault = -1;
            this.widthMax = -1;
            this.heightMax = -1;
            this.widthMin = -1;
            this.heightMin = -1;
            this.widthPercent = 1.0f;
            this.heightPercent = 1.0f;
            this.mBarrierDirection = -1;
            this.mHelperType = -1;
        }

        public final void applyTo(LayoutParams layoutParams) {
            layoutParams.leftToLeft = this.leftToLeft;
            layoutParams.leftToRight = this.leftToRight;
            layoutParams.rightToLeft = this.rightToLeft;
            layoutParams.rightToRight = this.rightToRight;
            layoutParams.topToTop = this.topToTop;
            layoutParams.topToBottom = this.topToBottom;
            layoutParams.bottomToTop = this.bottomToTop;
            layoutParams.bottomToBottom = this.bottomToBottom;
            layoutParams.baselineToBaseline = this.baselineToBaseline;
            layoutParams.startToEnd = this.startToEnd;
            layoutParams.startToStart = this.startToStart;
            layoutParams.endToStart = this.endToStart;
            layoutParams.endToEnd = this.endToEnd;
            layoutParams.leftMargin = this.leftMargin;
            layoutParams.rightMargin = this.rightMargin;
            layoutParams.topMargin = this.topMargin;
            layoutParams.bottomMargin = this.bottomMargin;
            layoutParams.goneStartMargin = this.goneStartMargin;
            layoutParams.goneEndMargin = this.goneEndMargin;
            layoutParams.horizontalBias = this.horizontalBias;
            layoutParams.verticalBias = this.verticalBias;
            layoutParams.circleConstraint = this.circleConstraint;
            layoutParams.circleRadius = this.circleRadius;
            layoutParams.circleAngle = this.circleAngle;
            layoutParams.dimensionRatio = this.dimensionRatio;
            layoutParams.editorAbsoluteX = this.editorAbsoluteX;
            layoutParams.editorAbsoluteY = this.editorAbsoluteY;
            layoutParams.verticalWeight = this.verticalWeight;
            layoutParams.horizontalWeight = this.horizontalWeight;
            layoutParams.verticalChainStyle = this.verticalChainStyle;
            layoutParams.horizontalChainStyle = this.horizontalChainStyle;
            layoutParams.constrainedWidth = this.constrainedWidth;
            layoutParams.constrainedHeight = this.constrainedHeight;
            layoutParams.matchConstraintDefaultWidth = this.widthDefault;
            layoutParams.matchConstraintDefaultHeight = this.heightDefault;
            layoutParams.matchConstraintMaxWidth = this.widthMax;
            layoutParams.matchConstraintMaxHeight = this.heightMax;
            layoutParams.matchConstraintMinWidth = this.widthMin;
            layoutParams.matchConstraintMinHeight = this.heightMin;
            layoutParams.matchConstraintPercentWidth = this.widthPercent;
            layoutParams.matchConstraintPercentHeight = this.heightPercent;
            layoutParams.orientation = this.orientation;
            layoutParams.guidePercent = this.guidePercent;
            layoutParams.guideBegin = this.guideBegin;
            layoutParams.guideEnd = this.guideEnd;
            layoutParams.width = this.mWidth;
            layoutParams.height = this.mHeight;
            if (VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.startMargin);
                layoutParams.setMarginEnd(this.endMargin);
            }
            layoutParams.validate();
        }

        private void fillFromConstraints(int i, Constraints.LayoutParams layoutParams) {
            this.mViewId = i;
            this.leftToLeft = layoutParams.leftToLeft;
            this.leftToRight = layoutParams.leftToRight;
            this.rightToLeft = layoutParams.rightToLeft;
            this.rightToRight = layoutParams.rightToRight;
            this.topToTop = layoutParams.topToTop;
            this.topToBottom = layoutParams.topToBottom;
            this.bottomToTop = layoutParams.bottomToTop;
            this.bottomToBottom = layoutParams.bottomToBottom;
            this.baselineToBaseline = layoutParams.baselineToBaseline;
            this.startToEnd = layoutParams.startToEnd;
            this.startToStart = layoutParams.startToStart;
            this.endToStart = layoutParams.endToStart;
            this.endToEnd = layoutParams.endToEnd;
            this.horizontalBias = layoutParams.horizontalBias;
            this.verticalBias = layoutParams.verticalBias;
            this.dimensionRatio = layoutParams.dimensionRatio;
            this.circleConstraint = layoutParams.circleConstraint;
            this.circleRadius = layoutParams.circleRadius;
            this.circleAngle = layoutParams.circleAngle;
            this.editorAbsoluteX = layoutParams.editorAbsoluteX;
            this.editorAbsoluteY = layoutParams.editorAbsoluteY;
            this.orientation = layoutParams.orientation;
            this.guidePercent = layoutParams.guidePercent;
            this.guideBegin = layoutParams.guideBegin;
            this.guideEnd = layoutParams.guideEnd;
            this.mWidth = layoutParams.width;
            this.mHeight = layoutParams.height;
            this.leftMargin = layoutParams.leftMargin;
            this.rightMargin = layoutParams.rightMargin;
            this.topMargin = layoutParams.topMargin;
            this.bottomMargin = layoutParams.bottomMargin;
            this.verticalWeight = layoutParams.verticalWeight;
            this.horizontalWeight = layoutParams.horizontalWeight;
            this.verticalChainStyle = layoutParams.verticalChainStyle;
            this.horizontalChainStyle = layoutParams.horizontalChainStyle;
            this.constrainedWidth = layoutParams.constrainedWidth;
            this.constrainedHeight = layoutParams.constrainedHeight;
            this.widthDefault = layoutParams.matchConstraintDefaultWidth;
            this.heightDefault = layoutParams.matchConstraintDefaultHeight;
            this.constrainedWidth = layoutParams.constrainedWidth;
            this.widthMax = layoutParams.matchConstraintMaxWidth;
            this.heightMax = layoutParams.matchConstraintMaxHeight;
            this.widthMin = layoutParams.matchConstraintMinWidth;
            this.heightMin = layoutParams.matchConstraintMinHeight;
            this.widthPercent = layoutParams.matchConstraintPercentWidth;
            this.heightPercent = layoutParams.matchConstraintPercentHeight;
            if (VERSION.SDK_INT >= 17) {
                this.endMargin = layoutParams.getMarginEnd();
                this.startMargin = layoutParams.getMarginStart();
            }
            this.alpha = layoutParams.alpha;
            this.rotation = layoutParams.rotation;
            this.rotationX = layoutParams.rotationX;
            this.rotationY = layoutParams.rotationY;
            this.scaleX = layoutParams.scaleX;
            this.scaleY = layoutParams.scaleY;
            this.transformPivotX = layoutParams.transformPivotX;
            this.transformPivotY = layoutParams.transformPivotY;
            this.translationX = layoutParams.translationX;
            this.translationY = layoutParams.translationY;
            this.translationZ = 0;
            this.elevation = layoutParams.elevation;
            this.applyElevation = layoutParams.applyElevation;
        }

        public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
            Constraint constraint = new Constraint();
            constraint.mIsGuideline = this.mIsGuideline;
            constraint.mWidth = this.mWidth;
            constraint.mHeight = this.mHeight;
            constraint.guideBegin = this.guideBegin;
            constraint.guideEnd = this.guideEnd;
            constraint.guidePercent = this.guidePercent;
            constraint.leftToLeft = this.leftToLeft;
            constraint.leftToRight = this.leftToRight;
            constraint.rightToLeft = this.rightToLeft;
            constraint.rightToRight = this.rightToRight;
            constraint.topToTop = this.topToTop;
            constraint.topToBottom = this.topToBottom;
            constraint.bottomToTop = this.bottomToTop;
            constraint.bottomToBottom = this.bottomToBottom;
            constraint.baselineToBaseline = this.baselineToBaseline;
            constraint.startToEnd = this.startToEnd;
            constraint.startToStart = this.startToStart;
            constraint.endToStart = this.endToStart;
            constraint.endToEnd = this.endToEnd;
            constraint.horizontalBias = this.horizontalBias;
            constraint.verticalBias = this.verticalBias;
            constraint.dimensionRatio = this.dimensionRatio;
            constraint.editorAbsoluteX = this.editorAbsoluteX;
            constraint.editorAbsoluteY = this.editorAbsoluteY;
            constraint.horizontalBias = this.horizontalBias;
            constraint.horizontalBias = this.horizontalBias;
            constraint.horizontalBias = this.horizontalBias;
            constraint.horizontalBias = this.horizontalBias;
            constraint.horizontalBias = this.horizontalBias;
            constraint.orientation = this.orientation;
            constraint.leftMargin = this.leftMargin;
            constraint.rightMargin = this.rightMargin;
            constraint.topMargin = this.topMargin;
            constraint.bottomMargin = this.bottomMargin;
            constraint.endMargin = this.endMargin;
            constraint.startMargin = this.startMargin;
            constraint.visibility = this.visibility;
            constraint.goneLeftMargin = this.goneLeftMargin;
            constraint.goneTopMargin = this.goneTopMargin;
            constraint.goneRightMargin = this.goneRightMargin;
            constraint.goneBottomMargin = this.goneBottomMargin;
            constraint.goneEndMargin = this.goneEndMargin;
            constraint.goneStartMargin = this.goneStartMargin;
            constraint.verticalWeight = this.verticalWeight;
            constraint.horizontalWeight = this.horizontalWeight;
            constraint.horizontalChainStyle = this.horizontalChainStyle;
            constraint.verticalChainStyle = this.verticalChainStyle;
            constraint.alpha = this.alpha;
            constraint.applyElevation = this.applyElevation;
            constraint.elevation = this.elevation;
            constraint.rotation = this.rotation;
            constraint.rotationX = this.rotationX;
            constraint.rotationY = this.rotationY;
            constraint.scaleX = this.scaleX;
            constraint.scaleY = this.scaleY;
            constraint.transformPivotX = this.transformPivotX;
            constraint.transformPivotY = this.transformPivotY;
            constraint.translationX = this.translationX;
            constraint.translationY = this.translationY;
            constraint.translationZ = this.translationZ;
            constraint.constrainedWidth = this.constrainedWidth;
            constraint.constrainedHeight = this.constrainedHeight;
            constraint.widthDefault = this.widthDefault;
            constraint.heightDefault = this.heightDefault;
            constraint.widthMax = this.widthMax;
            constraint.heightMax = this.heightMax;
            constraint.widthMin = this.widthMin;
            constraint.heightMin = this.heightMin;
            constraint.widthPercent = this.widthPercent;
            constraint.heightPercent = this.heightPercent;
            constraint.mBarrierDirection = this.mBarrierDirection;
            constraint.mHelperType = this.mHelperType;
            if (this.mReferenceIds != null) {
                constraint.mReferenceIds = Arrays.copyOf(this.mReferenceIds, this.mReferenceIds.length);
            }
            constraint.circleConstraint = this.circleConstraint;
            constraint.circleRadius = this.circleRadius;
            constraint.circleAngle = this.circleAngle;
            return constraint;
        }

        static /* synthetic */ void access$200(Constraint constraint, ConstraintHelper constraintHelper, int i, Constraints.LayoutParams layoutParams) {
            constraint.fillFromConstraints(i, layoutParams);
            if ((constraintHelper instanceof Barrier) != 0) {
                constraint.mHelperType = 1;
                Barrier barrier = (Barrier) constraintHelper;
                constraint.mBarrierDirection = barrier.getType();
                constraint.mReferenceIds = barrier.getReferencedIds();
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        mapToConstant = sparseIntArray;
        sparseIntArray.append(C0887R.styleable.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintLeft_toRightOf, 26);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintRight_toLeftOf, 29);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintRight_toRightOf, 30);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintTop_toTopOf, 36);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintTop_toBottomOf, 35);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintBottom_toTopOf, 4);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_editor_absoluteX, 6);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_editor_absoluteY, 7);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintGuide_begin, 17);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintGuide_end, 18);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintGuide_percent, 19);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_orientation, 27);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintStart_toEndOf, 32);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintStart_toStartOf, 33);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintEnd_toStartOf, 10);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintEnd_toEndOf, 9);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_goneMarginLeft, 13);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_goneMarginTop, 16);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_goneMarginRight, 14);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_goneMarginBottom, 11);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_goneMarginStart, 15);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_goneMarginEnd, 12);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintVertical_weight, 40);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintHorizontal_weight, 39);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintVertical_chainStyle, 42);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintHorizontal_bias, 20);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintVertical_bias, 37);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintDimensionRatio, 5);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintLeft_creator, 64);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintTop_creator, 64);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintRight_creator, 64);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintBottom_creator, 64);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintBaseline_creator, 64);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_layout_marginLeft, 24);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_layout_marginRight, 28);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_layout_marginStart, 31);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_layout_marginEnd, 8);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_layout_marginTop, 34);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_layout_marginBottom, 2);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_layout_width, 23);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_layout_height, 21);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_visibility, 22);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_alpha, 43);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_elevation, 44);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_rotationX, 45);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_rotationY, 46);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_rotation, 60);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_scaleX, 47);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_scaleY, 48);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_transformPivotX, 49);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_transformPivotY, 50);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_translationX, 51);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_translationY, 52);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_translationZ, 53);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintWidth_default, 54);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintHeight_default, 55);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintWidth_max, 56);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintHeight_max, 57);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintWidth_min, 58);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintHeight_min, 59);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintCircle, 61);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintCircleRadius, 62);
        mapToConstant.append(C0887R.styleable.ConstraintSet_layout_constraintCircleAngle, 63);
        mapToConstant.append(C0887R.styleable.ConstraintSet_android_id, 38);
    }

    public final void clone(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.mConstraints.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                this.mConstraints.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = (Constraint) this.mConstraints.get(Integer.valueOf(id));
            if (childAt instanceof ConstraintHelper) {
                Constraint.access$200(constraint, (ConstraintHelper) childAt, id, layoutParams);
            }
            constraint.fillFromConstraints(id, layoutParams);
        }
    }

    final void applyToInternal(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.mConstraints.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (this.mConstraints.containsKey(Integer.valueOf(id))) {
                hashSet.remove(Integer.valueOf(id));
                Constraint constraint = (Constraint) this.mConstraints.get(Integer.valueOf(id));
                if (constraint.mHelperType != -1) {
                    if (constraint.mHelperType == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        barrier.setReferencedIds(constraint.mReferenceIds);
                        barrier.setType(constraint.mBarrierDirection);
                        constraint.applyTo(ConstraintLayout.generateDefaultLayoutParams());
                    }
                }
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                constraint.applyTo(layoutParams);
                childAt.setLayoutParams(layoutParams);
                childAt.setVisibility(constraint.visibility);
                if (VERSION.SDK_INT >= 17) {
                    childAt.setAlpha(constraint.alpha);
                    childAt.setRotation(constraint.rotation);
                    childAt.setRotationX(constraint.rotationX);
                    childAt.setRotationY(constraint.rotationY);
                    childAt.setScaleX(constraint.scaleX);
                    childAt.setScaleY(constraint.scaleY);
                    if (!Float.isNaN(constraint.transformPivotX)) {
                        childAt.setPivotX(constraint.transformPivotX);
                    }
                    if (!Float.isNaN(constraint.transformPivotY)) {
                        childAt.setPivotY(constraint.transformPivotY);
                    }
                    childAt.setTranslationX(constraint.translationX);
                    childAt.setTranslationY(constraint.translationY);
                    if (VERSION.SDK_INT >= 21) {
                        childAt.setTranslationZ(constraint.translationZ);
                        if (constraint.applyElevation) {
                            childAt.setElevation(constraint.elevation);
                        }
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            Constraint constraint2 = (Constraint) this.mConstraints.get(num);
            if (constraint2.mHelperType != -1) {
                if (constraint2.mHelperType == 1) {
                    childAt = new Barrier(constraintLayout.getContext());
                    childAt.setId(num.intValue());
                    childAt.setReferencedIds(constraint2.mReferenceIds);
                    childAt.setType(constraint2.mBarrierDirection);
                    ViewGroup.LayoutParams generateDefaultLayoutParams = ConstraintLayout.generateDefaultLayoutParams();
                    constraint2.applyTo(generateDefaultLayoutParams);
                    constraintLayout.addView(childAt, generateDefaultLayoutParams);
                }
            }
            if (constraint2.mIsGuideline) {
                childAt = new Guideline(constraintLayout.getContext());
                childAt.setId(num.intValue());
                ViewGroup.LayoutParams generateDefaultLayoutParams2 = ConstraintLayout.generateDefaultLayoutParams();
                constraint2.applyTo(generateDefaultLayoutParams2);
                constraintLayout.addView(childAt, generateDefaultLayoutParams2);
            }
        }
    }

    public final void load(Context context, int i) {
        i = context.getResources().getXml(i);
        try {
            for (int eventType = i.getEventType(); eventType != 1; eventType = i.next()) {
                if (eventType == 0) {
                    i.getName();
                } else if (eventType == 2) {
                    String name = i.getName();
                    AttributeSet asAttributeSet = Xml.asAttributeSet(i);
                    int i2 = 0;
                    Constraint constraint = new Constraint();
                    TypedArray obtainStyledAttributes = context.obtainStyledAttributes(asAttributeSet, C0887R.styleable.ConstraintSet);
                    int indexCount = obtainStyledAttributes.getIndexCount();
                    while (i2 < indexCount) {
                        int index = obtainStyledAttributes.getIndex(i2);
                        int i3 = mapToConstant.get(index);
                        switch (i3) {
                            case 1:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.baselineToBaseline);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.baselineToBaseline = i3;
                                break;
                            case 2:
                                constraint.bottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.bottomMargin);
                                break;
                            case 3:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.bottomToBottom);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.bottomToBottom = i3;
                                break;
                            case 4:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.bottomToTop);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.bottomToTop = i3;
                                break;
                            case 5:
                                constraint.dimensionRatio = obtainStyledAttributes.getString(index);
                                break;
                            case 6:
                                constraint.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index, constraint.editorAbsoluteX);
                                break;
                            case 7:
                                constraint.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index, constraint.editorAbsoluteY);
                                break;
                            case 8:
                                constraint.endMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.endMargin);
                                break;
                            case 9:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.endToEnd);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.endToEnd = i3;
                                break;
                            case 10:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.endToStart);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.endToStart = i3;
                                break;
                            case 11:
                                constraint.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.goneBottomMargin);
                                break;
                            case 12:
                                constraint.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.goneEndMargin);
                                break;
                            case 13:
                                constraint.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.goneLeftMargin);
                                break;
                            case 14:
                                constraint.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.goneRightMargin);
                                break;
                            case 15:
                                constraint.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.goneStartMargin);
                                break;
                            case 16:
                                constraint.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.goneTopMargin);
                                break;
                            case 17:
                                constraint.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index, constraint.guideBegin);
                                break;
                            case 18:
                                constraint.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index, constraint.guideEnd);
                                break;
                            case 19:
                                constraint.guidePercent = obtainStyledAttributes.getFloat(index, constraint.guidePercent);
                                break;
                            case 20:
                                constraint.horizontalBias = obtainStyledAttributes.getFloat(index, constraint.horizontalBias);
                                break;
                            case 21:
                                constraint.mHeight = obtainStyledAttributes.getLayoutDimension(index, constraint.mHeight);
                                break;
                            case 22:
                                constraint.visibility = obtainStyledAttributes.getInt(index, constraint.visibility);
                                constraint.visibility = VISIBILITY_FLAGS[constraint.visibility];
                                break;
                            case 23:
                                constraint.mWidth = obtainStyledAttributes.getLayoutDimension(index, constraint.mWidth);
                                break;
                            case 24:
                                constraint.leftMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.leftMargin);
                                break;
                            case 25:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.leftToLeft);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.leftToLeft = i3;
                                break;
                            case 26:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.leftToRight);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.leftToRight = i3;
                                break;
                            case 27:
                                constraint.orientation = obtainStyledAttributes.getInt(index, constraint.orientation);
                                break;
                            case 28:
                                constraint.rightMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.rightMargin);
                                break;
                            case 29:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.rightToLeft);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.rightToLeft = i3;
                                break;
                            case 30:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.rightToRight);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.rightToRight = i3;
                                break;
                            case 31:
                                constraint.startMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.startMargin);
                                break;
                            case 32:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.startToEnd);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.startToEnd = i3;
                                break;
                            case 33:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.startToStart);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.startToStart = i3;
                                break;
                            case 34:
                                constraint.topMargin = obtainStyledAttributes.getDimensionPixelSize(index, constraint.topMargin);
                                break;
                            case 35:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.topToBottom);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.topToBottom = i3;
                                break;
                            case 36:
                                i3 = obtainStyledAttributes.getResourceId(index, constraint.topToTop);
                                if (i3 == -1) {
                                    i3 = obtainStyledAttributes.getInt(index, -1);
                                }
                                constraint.topToTop = i3;
                                break;
                            case 37:
                                constraint.verticalBias = obtainStyledAttributes.getFloat(index, constraint.verticalBias);
                                break;
                            case 38:
                                constraint.mViewId = obtainStyledAttributes.getResourceId(index, constraint.mViewId);
                                break;
                            case 39:
                                constraint.horizontalWeight = obtainStyledAttributes.getFloat(index, constraint.horizontalWeight);
                                break;
                            case 40:
                                constraint.verticalWeight = obtainStyledAttributes.getFloat(index, constraint.verticalWeight);
                                break;
                            case 41:
                                constraint.horizontalChainStyle = obtainStyledAttributes.getInt(index, constraint.horizontalChainStyle);
                                break;
                            case 42:
                                constraint.verticalChainStyle = obtainStyledAttributes.getInt(index, constraint.verticalChainStyle);
                                break;
                            case 43:
                                constraint.alpha = obtainStyledAttributes.getFloat(index, constraint.alpha);
                                break;
                            case 44:
                                constraint.applyElevation = true;
                                constraint.elevation = obtainStyledAttributes.getDimension(index, constraint.elevation);
                                break;
                            case 45:
                                constraint.rotationX = obtainStyledAttributes.getFloat(index, constraint.rotationX);
                                break;
                            case 46:
                                constraint.rotationY = obtainStyledAttributes.getFloat(index, constraint.rotationY);
                                break;
                            case 47:
                                constraint.scaleX = obtainStyledAttributes.getFloat(index, constraint.scaleX);
                                break;
                            case 48:
                                constraint.scaleY = obtainStyledAttributes.getFloat(index, constraint.scaleY);
                                break;
                            case 49:
                                constraint.transformPivotX = obtainStyledAttributes.getFloat(index, constraint.transformPivotX);
                                break;
                            case 50:
                                constraint.transformPivotY = obtainStyledAttributes.getFloat(index, constraint.transformPivotY);
                                break;
                            case 51:
                                constraint.translationX = obtainStyledAttributes.getDimension(index, constraint.translationX);
                                break;
                            case 52:
                                constraint.translationY = obtainStyledAttributes.getDimension(index, constraint.translationY);
                                break;
                            case 53:
                                constraint.translationZ = obtainStyledAttributes.getDimension(index, constraint.translationZ);
                                break;
                            default:
                                StringBuilder stringBuilder;
                                switch (i3) {
                                    case 60:
                                        constraint.rotation = obtainStyledAttributes.getFloat(index, constraint.rotation);
                                        break;
                                    case 61:
                                        i3 = obtainStyledAttributes.getResourceId(index, constraint.circleConstraint);
                                        if (i3 == -1) {
                                            i3 = obtainStyledAttributes.getInt(index, -1);
                                        }
                                        constraint.circleConstraint = i3;
                                        break;
                                    case 62:
                                        constraint.circleRadius = obtainStyledAttributes.getDimensionPixelSize(index, constraint.circleRadius);
                                        break;
                                    case 63:
                                        constraint.circleAngle = obtainStyledAttributes.getFloat(index, constraint.circleAngle);
                                        break;
                                    case 64:
                                        stringBuilder = new StringBuilder("unused attribute 0x");
                                        stringBuilder.append(Integer.toHexString(index));
                                        stringBuilder.append("   ");
                                        stringBuilder.append(mapToConstant.get(index));
                                        Log.w("ConstraintSet", stringBuilder.toString());
                                        break;
                                    default:
                                        stringBuilder = new StringBuilder("Unknown attribute 0x");
                                        stringBuilder.append(Integer.toHexString(index));
                                        stringBuilder.append("   ");
                                        stringBuilder.append(mapToConstant.get(index));
                                        Log.w("ConstraintSet", stringBuilder.toString());
                                        break;
                                }
                        }
                        i2++;
                    }
                    obtainStyledAttributes.recycle();
                    if (name.equalsIgnoreCase("Guideline")) {
                        constraint.mIsGuideline = true;
                    }
                    this.mConstraints.put(Integer.valueOf(constraint.mViewId), constraint);
                }
            }
        } catch (Context context2) {
            context2.printStackTrace();
        } catch (Context context22) {
            context22.printStackTrace();
        }
    }
}
