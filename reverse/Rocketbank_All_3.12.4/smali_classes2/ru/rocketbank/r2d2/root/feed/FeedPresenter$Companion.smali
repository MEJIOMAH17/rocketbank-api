.class public final Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;
.super Ljava/lang/Object;
.source "FeedPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/feed/FeedPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColorDrawables()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/graphics/drawable/ColorDrawable;",
            ">;"
        }
    .end annotation

    .line 480
    invoke-static {}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->access$getColorDrawables$cp()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    return-object v0
.end method
