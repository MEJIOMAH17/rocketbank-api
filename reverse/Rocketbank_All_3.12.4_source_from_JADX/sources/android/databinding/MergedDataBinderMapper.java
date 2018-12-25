package android.databinding;

import android.view.View;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class MergedDataBinderMapper extends DataBinderMapper {
    private List<DataBinderMapper> mMappers = new CopyOnWriteArrayList();

    protected void addMapper(DataBinderMapper dataBinderMapper) {
        this.mMappers.add(dataBinderMapper);
    }

    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        for (DataBinderMapper dataBinder : this.mMappers) {
            ViewDataBinding dataBinder2 = dataBinder.getDataBinder(dataBindingComponent, view, i);
            if (dataBinder2 != null) {
                return dataBinder2;
            }
        }
        return null;
    }

    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        for (DataBinderMapper dataBinder : this.mMappers) {
            ViewDataBinding dataBinder2 = dataBinder.getDataBinder(dataBindingComponent, viewArr, i);
            if (dataBinder2 != null) {
                return dataBinder2;
            }
        }
        return null;
    }

    public int getLayoutId(String str) {
        for (DataBinderMapper layoutId : this.mMappers) {
            int layoutId2 = layoutId.getLayoutId(str);
            if (layoutId2 != 0) {
                return layoutId2;
            }
        }
        return null;
    }

    public String convertBrIdToString(int i) {
        for (DataBinderMapper convertBrIdToString : this.mMappers) {
            String convertBrIdToString2 = convertBrIdToString.convertBrIdToString(i);
            if (convertBrIdToString2 != null) {
                return convertBrIdToString2;
            }
        }
        return 0;
    }
}
