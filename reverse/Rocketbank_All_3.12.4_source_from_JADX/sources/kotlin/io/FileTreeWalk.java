package kotlin.io;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Stack;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin._Assertions;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.sequences.Sequence;

/* compiled from: FileTreeWalk.kt */
public final class FileTreeWalk implements Sequence<File> {
    private final FileWalkDirection direction;
    private final int maxDepth;
    private final Function1<File, Boolean> onEnter;
    private final Function2<File, IOException, Unit> onFail;
    private final Function1<File, Unit> onLeave;
    private final File start;

    /* compiled from: FileTreeWalk.kt */
    private static abstract class WalkState {
        private final File root;

        public abstract File step();

        public WalkState(File file) {
            Intrinsics.checkParameterIsNotNull(file, "root");
            this.root = file;
        }

        public final File getRoot() {
            return this.root;
        }
    }

    /* compiled from: FileTreeWalk.kt */
    private static abstract class DirectoryState extends WalkState {
        public DirectoryState(File file) {
            Intrinsics.checkParameterIsNotNull(file, "rootDir");
            super(file);
            if (_Assertions.ENABLED) {
                file = file.isDirectory();
                if (_Assertions.ENABLED && file == null) {
                    throw new AssertionError("rootDir must be verified to be directory beforehand.");
                }
            }
        }
    }

    /* compiled from: FileTreeWalk.kt */
    private final class FileTreeWalkIterator extends AbstractIterator<File> {
        private final Stack<WalkState> state = new Stack();

        public final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[FileWalkDirection.values().length];
                $EnumSwitchMapping$0 = iArr;
                iArr[FileWalkDirection.TOP_DOWN.ordinal()] = 1;
                $EnumSwitchMapping$0[FileWalkDirection.BOTTOM_UP.ordinal()] = 2;
            }
        }

        /* compiled from: FileTreeWalk.kt */
        private final class SingleFileState extends WalkState {
            final /* synthetic */ FileTreeWalkIterator this$0;
            private boolean visited;

            public SingleFileState(FileTreeWalkIterator fileTreeWalkIterator, File file) {
                Intrinsics.checkParameterIsNotNull(file, "rootFile");
                this.this$0 = fileTreeWalkIterator;
                super(file);
                if (_Assertions.ENABLED != null) {
                    fileTreeWalkIterator = file.isFile();
                    if (_Assertions.ENABLED != null && fileTreeWalkIterator == null) {
                        throw ((Throwable) new AssertionError("rootFile must be verified to be file beforehand."));
                    }
                }
            }

            public final File step() {
                if (this.visited) {
                    return null;
                }
                this.visited = true;
                return getRoot();
            }
        }

        /* compiled from: FileTreeWalk.kt */
        private final class BottomUpDirectoryState extends DirectoryState {
            private boolean failed;
            private int fileIndex;
            private File[] fileList;
            private boolean rootVisited;
            final /* synthetic */ FileTreeWalkIterator this$0;

            public BottomUpDirectoryState(FileTreeWalkIterator fileTreeWalkIterator, File file) {
                Intrinsics.checkParameterIsNotNull(file, "rootDir");
                this.this$0 = fileTreeWalkIterator;
                super(file);
            }

            public final File step() {
                Function1 access$getOnEnter$p;
                if (!this.failed && this.fileList == null) {
                    access$getOnEnter$p = FileTreeWalk.this.onEnter;
                    if (access$getOnEnter$p != null && !((Boolean) access$getOnEnter$p.invoke(getRoot())).booleanValue()) {
                        return null;
                    }
                    this.fileList = getRoot().listFiles();
                    if (this.fileList == null) {
                        Function2 access$getOnFail$p = FileTreeWalk.this.onFail;
                        if (access$getOnFail$p != null) {
                            access$getOnFail$p.invoke(getRoot(), new AccessDeniedException(getRoot(), null, "Cannot list files in a directory", 2, null));
                        }
                        this.failed = true;
                    }
                }
                if (this.fileList != null) {
                    int i = this.fileIndex;
                    File[] fileArr = this.fileList;
                    if (fileArr == null) {
                        Intrinsics.throwNpe();
                    }
                    if (i < fileArr.length) {
                        File[] fileArr2 = this.fileList;
                        if (fileArr2 == null) {
                            Intrinsics.throwNpe();
                        }
                        int i2 = this.fileIndex;
                        this.fileIndex = i2 + 1;
                        return fileArr2[i2];
                    }
                }
                if (this.rootVisited) {
                    access$getOnEnter$p = FileTreeWalk.this.onLeave;
                    if (access$getOnEnter$p != null) {
                        access$getOnEnter$p.invoke(getRoot());
                    }
                    return null;
                }
                this.rootVisited = true;
                return getRoot();
            }
        }

        /* compiled from: FileTreeWalk.kt */
        private final class TopDownDirectoryState extends DirectoryState {
            private int fileIndex;
            private File[] fileList;
            private boolean rootVisited;
            final /* synthetic */ FileTreeWalkIterator this$0;

            public TopDownDirectoryState(FileTreeWalkIterator fileTreeWalkIterator, File file) {
                Intrinsics.checkParameterIsNotNull(file, "rootDir");
                this.this$0 = fileTreeWalkIterator;
                super(file);
            }

            /* JADX WARNING: inconsistent code. */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final java.io.File step() {
                /*
                r10 = this;
                r0 = r10.rootVisited;
                r1 = 0;
                if (r0 != 0) goto L_0x0028;
            L_0x0005:
                r0 = r10.this$0;
                r0 = kotlin.io.FileTreeWalk.this;
                r0 = r0.onEnter;
                if (r0 == 0) goto L_0x0020;
            L_0x000f:
                r2 = r10.getRoot();
                r0 = r0.invoke(r2);
                r0 = (java.lang.Boolean) r0;
                r0 = r0.booleanValue();
                if (r0 != 0) goto L_0x0020;
            L_0x001f:
                return r1;
            L_0x0020:
                r0 = 1;
                r10.rootVisited = r0;
                r0 = r10.getRoot();
                return r0;
            L_0x0028:
                r0 = r10.fileList;
                if (r0 == 0) goto L_0x004b;
            L_0x002c:
                r0 = r10.fileIndex;
                r2 = r10.fileList;
                if (r2 != 0) goto L_0x0035;
            L_0x0032:
                kotlin.jvm.internal.Intrinsics.throwNpe();
            L_0x0035:
                r2 = r2.length;
                if (r0 >= r2) goto L_0x0039;
            L_0x0038:
                goto L_0x004b;
            L_0x0039:
                r0 = r10.this$0;
                r0 = kotlin.io.FileTreeWalk.this;
                r0 = r0.onLeave;
                if (r0 == 0) goto L_0x004a;
            L_0x0043:
                r2 = r10.getRoot();
                r0.invoke(r2);
            L_0x004a:
                return r1;
            L_0x004b:
                r0 = r10.fileList;
                if (r0 != 0) goto L_0x009d;
            L_0x004f:
                r0 = r10.getRoot();
                r0 = r0.listFiles();
                r10.fileList = r0;
                r0 = r10.fileList;
                if (r0 != 0) goto L_0x007d;
            L_0x005d:
                r0 = r10.this$0;
                r0 = kotlin.io.FileTreeWalk.this;
                r0 = r0.onFail;
                if (r0 == 0) goto L_0x007d;
            L_0x0067:
                r2 = r10.getRoot();
                r9 = new kotlin.io.AccessDeniedException;
                r4 = r10.getRoot();
                r5 = 0;
                r6 = "Cannot list files in a directory";
                r7 = 2;
                r8 = 0;
                r3 = r9;
                r3.<init>(r4, r5, r6, r7, r8);
                r0.invoke(r2, r9);
            L_0x007d:
                r0 = r10.fileList;
                if (r0 == 0) goto L_0x008b;
            L_0x0081:
                r0 = r10.fileList;
                if (r0 != 0) goto L_0x0088;
            L_0x0085:
                kotlin.jvm.internal.Intrinsics.throwNpe();
            L_0x0088:
                r0 = r0.length;
                if (r0 != 0) goto L_0x009d;
            L_0x008b:
                r0 = r10.this$0;
                r0 = kotlin.io.FileTreeWalk.this;
                r0 = r0.onLeave;
                if (r0 == 0) goto L_0x009c;
            L_0x0095:
                r2 = r10.getRoot();
                r0.invoke(r2);
            L_0x009c:
                return r1;
            L_0x009d:
                r0 = r10.fileList;
                if (r0 != 0) goto L_0x00a4;
            L_0x00a1:
                kotlin.jvm.internal.Intrinsics.throwNpe();
            L_0x00a4:
                r1 = r10.fileIndex;
                r2 = r1 + 1;
                r10.fileIndex = r2;
                r0 = r0[r1];
                return r0;
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FileTreeWalk.FileTreeWalkIterator.TopDownDirectoryState.step():java.io.File");
            }
        }

        public FileTreeWalkIterator() {
            if (FileTreeWalk.this.start.isDirectory()) {
                this.state.push(directoryState(FileTreeWalk.this.start));
            } else if (FileTreeWalk.this.start.isFile()) {
                this.state.push(new SingleFileState(this, FileTreeWalk.this.start));
            } else {
                done();
            }
        }

        protected final void computeNext() {
            File gotoNext = gotoNext();
            if (gotoNext != null) {
                setNext(gotoNext);
            } else {
                done();
            }
        }

        private final DirectoryState directoryState(File file) {
            switch (WhenMappings.$EnumSwitchMapping$0[FileTreeWalk.this.direction.ordinal()]) {
                case 1:
                    return new TopDownDirectoryState(this, file);
                case 2:
                    return new BottomUpDirectoryState(this, file);
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        private final File gotoNext() {
            while (!this.state.empty()) {
                Object peek = this.state.peek();
                if (peek == null) {
                    Intrinsics.throwNpe();
                }
                WalkState walkState = (WalkState) peek;
                File step = walkState.step();
                if (step == null) {
                    this.state.pop();
                } else {
                    if (!Intrinsics.areEqual(step, walkState.getRoot()) && step.isDirectory()) {
                        if (this.state.size() < FileTreeWalk.this.maxDepth) {
                            this.state.push(directoryState(step));
                        }
                    }
                    return step;
                }
            }
            return null;
        }
    }

    private FileTreeWalk(File file, FileWalkDirection fileWalkDirection, Function1<? super File, Boolean> function1, Function1<? super File, Unit> function12, Function2<? super File, ? super IOException, Unit> function2, int i) {
        this.start = file;
        this.direction = fileWalkDirection;
        this.onEnter = function1;
        this.onLeave = function12;
        this.onFail = function2;
        this.maxDepth = i;
    }

    /* synthetic */ FileTreeWalk(File file, FileWalkDirection fileWalkDirection, Function1 function1, Function1 function12, Function2 function2, int i, int i2, Ref ref) {
        if ((i2 & 2) != null) {
            fileWalkDirection = FileWalkDirection.TOP_DOWN;
        }
        FileWalkDirection fileWalkDirection2 = fileWalkDirection;
        if ((i2 & 32) != null) {
            i = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        this(file, fileWalkDirection2, function1, function12, function2, i);
    }

    public FileTreeWalk(File file, FileWalkDirection fileWalkDirection) {
        Intrinsics.checkParameterIsNotNull(file, "start");
        Intrinsics.checkParameterIsNotNull(fileWalkDirection, "direction");
        this(file, fileWalkDirection, null, null, null, 0, 32, null);
    }

    public /* synthetic */ FileTreeWalk(File file, FileWalkDirection fileWalkDirection, int i, Ref ref) {
        if ((i & 2) != 0) {
            fileWalkDirection = FileWalkDirection.TOP_DOWN;
        }
        this(file, fileWalkDirection);
    }

    public final Iterator<File> iterator() {
        return new FileTreeWalkIterator();
    }

    public final FileTreeWalk onEnter(Function1<? super File, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "function");
        return new FileTreeWalk(this.start, this.direction, function1, this.onLeave, this.onFail, this.maxDepth);
    }

    public final FileTreeWalk onLeave(Function1<? super File, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "function");
        return new FileTreeWalk(this.start, this.direction, this.onEnter, function1, this.onFail, this.maxDepth);
    }

    public final FileTreeWalk onFail(Function2<? super File, ? super IOException, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, "function");
        return new FileTreeWalk(this.start, this.direction, this.onEnter, this.onLeave, function2, this.maxDepth);
    }

    public final FileTreeWalk maxDepth(int i) {
        if (i > 0) {
            return new FileTreeWalk(this.start, this.direction, this.onEnter, this.onLeave, this.onFail, i);
        }
        StringBuilder stringBuilder = new StringBuilder("depth must be positive, but was ");
        stringBuilder.append(i);
        stringBuilder.append(46);
        throw new IllegalArgumentException(stringBuilder.toString());
    }
}
