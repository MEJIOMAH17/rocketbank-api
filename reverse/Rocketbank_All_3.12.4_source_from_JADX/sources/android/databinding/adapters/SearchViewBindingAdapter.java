package android.databinding.adapters;

import android.annotation.TargetApi;
import android.databinding.BindingAdapter;
import android.databinding.BindingMethod;
import android.databinding.BindingMethods;
import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;
import android.widget.SearchView.OnSuggestionListener;

@BindingMethods({@BindingMethod(attribute = "android:onQueryTextFocusChange", method = "setOnQueryTextFocusChangeListener", type = SearchView.class), @BindingMethod(attribute = "android:onSearchClick", method = "setOnSearchClickListener", type = SearchView.class), @BindingMethod(attribute = "android:onClose", method = "setOnCloseListener", type = SearchView.class)})
@RestrictTo
public class SearchViewBindingAdapter {

    @TargetApi(11)
    public interface OnQueryTextChange {
        boolean onQueryTextChange(String str);
    }

    @TargetApi(11)
    public interface OnQueryTextSubmit {
        boolean onQueryTextSubmit(String str);
    }

    @TargetApi(11)
    public interface OnSuggestionClick {
        boolean onSuggestionClick(int i);
    }

    @TargetApi(11)
    public interface OnSuggestionSelect {
        boolean onSuggestionSelect(int i);
    }

    @BindingAdapter(requireAll = false, value = {"android:onQueryTextSubmit", "android:onQueryTextChange"})
    public static void setOnQueryTextListener(SearchView searchView, final OnQueryTextSubmit onQueryTextSubmit, final OnQueryTextChange onQueryTextChange) {
        if (VERSION.SDK_INT >= 11) {
            if (onQueryTextSubmit == null && onQueryTextChange == null) {
                searchView.setOnQueryTextListener(null);
                return;
            }
            searchView.setOnQueryTextListener(new OnQueryTextListener() {
                public final boolean onQueryTextSubmit(String str) {
                    return onQueryTextSubmit != null ? onQueryTextSubmit.onQueryTextSubmit(str) : null;
                }

                public final boolean onQueryTextChange(String str) {
                    return onQueryTextChange != null ? onQueryTextChange.onQueryTextChange(str) : null;
                }
            });
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onSuggestionSelect", "android:onSuggestionClick"})
    public static void setOnSuggestListener(SearchView searchView, final OnSuggestionSelect onSuggestionSelect, final OnSuggestionClick onSuggestionClick) {
        if (VERSION.SDK_INT >= 11) {
            if (onSuggestionSelect == null && onSuggestionClick == null) {
                searchView.setOnSuggestionListener(null);
                return;
            }
            searchView.setOnSuggestionListener(new OnSuggestionListener() {
                public final boolean onSuggestionSelect(int i) {
                    return onSuggestionSelect != null ? onSuggestionSelect.onSuggestionSelect(i) : false;
                }

                public final boolean onSuggestionClick(int i) {
                    return onSuggestionClick != null ? onSuggestionClick.onSuggestionClick(i) : false;
                }
            });
        }
    }
}
