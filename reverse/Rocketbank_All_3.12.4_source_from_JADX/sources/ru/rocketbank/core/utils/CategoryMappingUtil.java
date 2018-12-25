package ru.rocketbank.core.utils;

import android.graphics.Color;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CategoryMappingUtil.kt */
public final class CategoryMappingUtil {
    private static final Pair<Integer, Character> DEFAULT = new Pair(Integer.valueOf(Color.rgb(0, 0, 0)), Character.valueOf('?'));
    public static final CategoryMappingUtil INSTANCE = new CategoryMappingUtil();
    private static final CategoryMappingUtil$categoryMapping$1 categoryMapping = new CategoryMappingUtil$categoryMapping$1();

    private CategoryMappingUtil() {
    }

    public final Pair<Integer, Character> getDEFAULT() {
        return DEFAULT;
    }

    public final Pair<Integer, Character> getCategory(int i) {
        if (i >= categoryMapping.size()) {
            return DEFAULT;
        }
        i = categoryMapping.valueAt(i);
        Intrinsics.checkExpressionValueIsNotNull(i, "categoryMapping.valueAt(index)");
        return (Pair) i;
    }

    public final Pair<Integer, Character> getCategory(long j) {
        j = categoryMapping.get(j);
        Intrinsics.checkExpressionValueIsNotNull(j, "categoryMapping.get(categoryId)");
        return (Pair) j;
    }
}
