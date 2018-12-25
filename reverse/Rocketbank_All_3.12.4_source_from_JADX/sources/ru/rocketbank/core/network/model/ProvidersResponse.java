package ru.rocketbank.core.network.model;

import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import ru.rocketbank.core.model.provider.Provider;

public class ProvidersResponse implements Serializable {
    private List<Category> categories;
    private List<Provider> providers;

    /* renamed from: ru.rocketbank.core.network.model.ProvidersResponse$1 */
    static class C08301 implements Comparator<Provider> {
        C08301() {
        }

        public final int compare(Provider provider, Provider provider2) {
            if (provider.getPosition() < provider2.getPosition()) {
                return -1;
            }
            return provider.getPosition() == provider2.getPosition() ? null : 1;
        }
    }

    public static class Category {
        private int id;
        private String name;

        public int getId() {
            return this.id;
        }

        public void setId(int i) {
            this.id = i;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    public static Map<String, List<Provider>> mapProviderResponse(ProvidersResponse providersResponse) {
        if (providersResponse == null) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        Map linkedHashMap = new LinkedHashMap();
        for (Category category : providersResponse.getCategories()) {
            sparseArray.put(category.getId(), category.getName());
            linkedHashMap.put(category.getName(), new ArrayList());
        }
        for (Provider provider : providersResponse.providers) {
            for (Integer intValue : provider.getCategory_ids()) {
                String str = (String) sparseArray.get(intValue.intValue());
                if (str != null) {
                    ((List) linkedHashMap.get(str)).add(provider);
                }
            }
        }
        providersResponse = new LinkedHashMap();
        for (Entry entry : linkedHashMap.entrySet()) {
            List list = (List) entry.getValue();
            if (!list.isEmpty()) {
                providersResponse.put(entry.getKey(), list);
                Collections.sort(list, new C08301());
            }
        }
        return providersResponse;
    }

    public List<Provider> getProviders() {
        return this.providers;
    }

    public List<Category> getCategories() {
        return this.categories;
    }

    public void setCategories(List<Category> list) {
        this.categories = list;
    }

    public void setProviders(List<Provider> list) {
        this.providers = list;
    }

    public ProvidersResponse filter(String str) {
        List arrayList;
        ProvidersResponse providersResponse = new ProvidersResponse();
        providersResponse.setCategories(getCategories());
        if (str != null) {
            if (!str.isEmpty()) {
                arrayList = new ArrayList();
                for (Provider provider : this.providers) {
                    if (provider.contains(str)) {
                        arrayList.add(provider);
                    }
                }
                providersResponse.setProviders(arrayList);
                return providersResponse;
            }
        }
        arrayList = new ArrayList(this.providers);
        providersResponse.setProviders(arrayList);
        return providersResponse;
    }
}
