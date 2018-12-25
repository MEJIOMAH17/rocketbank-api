package android.support.v4.util;

public final class Pair<F, S> {
    public final F first;
    public final S second;

    public Pair(F f, S s) {
        this.first = f;
        this.second = s;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        boolean z;
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = this.first;
        if (obj2 != obj3) {
            if (obj2 == null || !obj2.equals(obj3)) {
                z = false;
                if (z) {
                    obj = pair.second;
                    obj2 = this.second;
                    if (obj != obj2) {
                        if (obj != null || obj.equals(obj2) == null) {
                            obj = null;
                            if (obj == null) {
                                return true;
                            }
                        }
                    }
                    obj = 1;
                    if (obj == null) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
        }
        z = true;
        if (z) {
            obj = pair.second;
            obj2 = this.second;
            if (obj != obj2) {
                if (obj != null) {
                }
                obj = null;
                if (obj == null) {
                    return true;
                }
            }
            obj = 1;
            if (obj == null) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = this.first == null ? 0 : this.first.hashCode();
        if (this.second != null) {
            i = this.second.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Pair{");
        stringBuilder.append(String.valueOf(this.first));
        stringBuilder.append(" ");
        stringBuilder.append(String.valueOf(this.second));
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
