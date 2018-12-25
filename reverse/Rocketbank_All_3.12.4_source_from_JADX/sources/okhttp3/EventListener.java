package okhttp3;

public abstract class EventListener {
    public static final EventListener NONE = new C12961();

    public interface Factory {
        EventListener create$a995d89();
    }

    /* renamed from: okhttp3.EventListener$1 */
    class C12961 extends EventListener {
        C12961() {
        }
    }

    /* renamed from: okhttp3.EventListener$2 */
    class C12972 implements Factory {
        final /* synthetic */ EventListener val$listener;

        C12972(EventListener eventListener) {
            this.val$listener = eventListener;
        }

        public final EventListener create$a995d89() {
            return this.val$listener;
        }
    }

    static Factory factory(EventListener eventListener) {
        return new C12972(eventListener);
    }
}
