.class final Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/SnackbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnackbarRecord"
.end annotation


# instance fields
.field private final callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lru/rocketbank/core/widgets/SnackbarManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private duration:I


# direct methods
.method constructor <init>(ILru/rocketbank/core/widgets/SnackbarManager$Callback;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    .line 160
    iput p1, p0, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->duration:I

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)I
    .locals 0

    .line 154
    iget p0, p0, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->duration:I

    return p0
.end method

.method static synthetic access$102(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;I)I
    .locals 0

    .line 154
    iput p1, p0, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->duration:I

    return p1
.end method

.method static synthetic access$200(Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 154
    iget-object p0, p0, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method final isSnackbar(Lru/rocketbank/core/widgets/SnackbarManager$Callback;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lru/rocketbank/core/widgets/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
