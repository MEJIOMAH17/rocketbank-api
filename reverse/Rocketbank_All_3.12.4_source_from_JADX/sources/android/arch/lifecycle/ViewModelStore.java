package android.arch.lifecycle;

import java.util.HashMap;

public final class ViewModelStore {
    private final HashMap<String, ViewModel> mMap = new HashMap();

    final void put(String str, ViewModel viewModel) {
        ViewModel viewModel2 = (ViewModel) this.mMap.get(str);
        if (viewModel2 != null) {
            viewModel2.onCleared();
        }
        this.mMap.put(str, viewModel);
    }

    final ViewModel get(String str) {
        return (ViewModel) this.mMap.get(str);
    }

    public final void clear() {
        for (ViewModel onCleared : this.mMap.values()) {
            onCleared.onCleared();
        }
        this.mMap.clear();
    }
}
