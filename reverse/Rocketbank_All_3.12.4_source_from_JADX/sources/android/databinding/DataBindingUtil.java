package android.databinding;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class DataBindingUtil {
    private static DataBindingComponent sDefaultComponent;
    private static DataBinderMapper sMapper = new DataBinderMapperImpl();

    private DataBindingUtil() {
    }

    public static void setDefaultComponent(DataBindingComponent dataBindingComponent) {
        sDefaultComponent = dataBindingComponent;
    }

    public static DataBindingComponent getDefaultComponent() {
        return sDefaultComponent;
    }

    public static <T extends ViewDataBinding> T inflate(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, i, viewGroup, z, sDefaultComponent);
    }

    public static <T extends ViewDataBinding> T inflate(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        int i2 = 0;
        int i3 = (viewGroup == null || !z) ? 0 : 1;
        if (i3 != 0) {
            i2 = viewGroup.getChildCount();
        }
        View inflate = layoutInflater.inflate(i, viewGroup, z);
        if (i3 != 0) {
            return bindToAddedViews(dataBindingComponent, viewGroup, i2, i);
        }
        return bind(dataBindingComponent, inflate, i);
    }

    public static <T extends ViewDataBinding> T bind(View view) {
        return bind(view, sDefaultComponent);
    }

    public static <T extends ViewDataBinding> T bind(View view, DataBindingComponent dataBindingComponent) {
        T binding = getBinding(view);
        if (binding != null) {
            return binding;
        }
        Object tag = view.getTag();
        if (tag instanceof String) {
            int layoutId = sMapper.getLayoutId((String) tag);
            if (layoutId != 0) {
                return sMapper.getDataBinder(dataBindingComponent, view, layoutId);
            }
            throw new IllegalArgumentException("View is not a binding layout. Tag: ".concat(String.valueOf(tag)));
        }
        throw new IllegalArgumentException("View is not a binding layout");
    }

    static <T extends ViewDataBinding> T bind(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        return sMapper.getDataBinder(dataBindingComponent, viewArr, i);
    }

    static <T extends ViewDataBinding> T bind(DataBindingComponent dataBindingComponent, View view, int i) {
        return sMapper.getDataBinder(dataBindingComponent, view, i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T extends android.databinding.ViewDataBinding> T findBinding(android.view.View r9) {
        /*
        r0 = 0;
    L_0x0001:
        if (r9 == 0) goto L_0x0058;
    L_0x0003:
        r1 = android.databinding.ViewDataBinding.getBinding(r9);
        if (r1 == 0) goto L_0x000a;
    L_0x0009:
        return r1;
    L_0x000a:
        r1 = r9.getTag();
        r2 = r1 instanceof java.lang.String;
        if (r2 == 0) goto L_0x004b;
    L_0x0012:
        r1 = (java.lang.String) r1;
        r2 = "layout";
        r2 = r1.startsWith(r2);
        if (r2 == 0) goto L_0x004b;
    L_0x001c:
        r2 = "_0";
        r2 = r1.endsWith(r2);
        if (r2 == 0) goto L_0x004b;
    L_0x0024:
        r2 = 6;
        r2 = r1.charAt(r2);
        r3 = 7;
        r4 = 47;
        r3 = r1.indexOf(r4, r3);
        r5 = 1;
        r6 = -1;
        r7 = 0;
        if (r2 != r4) goto L_0x0039;
    L_0x0035:
        if (r3 != r6) goto L_0x0048;
    L_0x0037:
        r7 = r5;
        goto L_0x0048;
    L_0x0039:
        r8 = 45;
        if (r2 != r8) goto L_0x0048;
    L_0x003d:
        if (r3 == r6) goto L_0x0048;
    L_0x003f:
        r3 = r3 + 1;
        r1 = r1.indexOf(r4, r3);
        if (r1 != r6) goto L_0x0048;
    L_0x0047:
        goto L_0x0037;
    L_0x0048:
        if (r7 == 0) goto L_0x004b;
    L_0x004a:
        return r0;
    L_0x004b:
        r9 = r9.getParent();
        r1 = r9 instanceof android.view.View;
        if (r1 == 0) goto L_0x0056;
    L_0x0053:
        r9 = (android.view.View) r9;
        goto L_0x0001;
    L_0x0056:
        r9 = r0;
        goto L_0x0001;
    L_0x0058:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.databinding.DataBindingUtil.findBinding(android.view.View):T");
    }

    public static <T extends ViewDataBinding> T getBinding(View view) {
        return ViewDataBinding.getBinding(view);
    }

    public static <T extends ViewDataBinding> T setContentView(Activity activity, int i) {
        return setContentView(activity, i, sDefaultComponent);
    }

    public static <T extends ViewDataBinding> T setContentView(Activity activity, int i, DataBindingComponent dataBindingComponent) {
        activity.setContentView(i);
        return bindToAddedViews(dataBindingComponent, (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290), 0, i);
    }

    public static String convertBrIdToString(int i) {
        return sMapper.convertBrIdToString(i);
    }

    private static <T extends ViewDataBinding> T bindToAddedViews(DataBindingComponent dataBindingComponent, ViewGroup viewGroup, int i, int i2) {
        int childCount = viewGroup.getChildCount();
        int i3 = childCount - i;
        if (i3 == 1) {
            return bind(dataBindingComponent, viewGroup.getChildAt(childCount - 1), i2);
        }
        View[] viewArr = new View[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4] = viewGroup.getChildAt(i4 + i);
        }
        return bind(dataBindingComponent, viewArr, i2);
    }
}
