package kotlin.jvm.internal;

/* compiled from: PackageReference.kt */
public final class PackageReference implements ClassBasedDeclarationContainer {
    private final Class<?> jClass;
    private final String moduleName;

    public PackageReference(Class<?> cls, String str) {
        Intrinsics.checkParameterIsNotNull(cls, "jClass");
        Intrinsics.checkParameterIsNotNull(str, "moduleName");
        this.jClass = cls;
        this.moduleName = str;
    }

    public final Class<?> getJClass() {
        return this.jClass;
    }

    public final boolean equals(Object obj) {
        return (!(obj instanceof PackageReference) || Intrinsics.areEqual(this.jClass, ((PackageReference) obj).jClass) == null) ? null : true;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.jClass.toString());
        stringBuilder.append(" (Kotlin reflection is not available)");
        return stringBuilder.toString();
    }

    public final int hashCode() {
        return this.jClass.hashCode();
    }
}
