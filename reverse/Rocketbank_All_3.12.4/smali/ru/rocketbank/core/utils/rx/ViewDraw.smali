.class public final Lru/rocketbank/core/utils/rx/ViewDraw;
.super Ljava/lang/Object;
.source "ViewDraw.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/utils/rx/ViewDraw$DrawViewTransformation;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/utils/rx/ViewDraw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lru/rocketbank/core/utils/rx/ViewDraw;

    invoke-direct {v0}, Lru/rocketbank/core/utils/rx/ViewDraw;-><init>()V

    sput-object v0, Lru/rocketbank/core/utils/rx/ViewDraw;->INSTANCE:Lru/rocketbank/core/utils/rx/ViewDraw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyDrawView()Lru/rocketbank/core/utils/rx/ViewDraw$DrawViewTransformation;
    .locals 1

    .line 15
    new-instance v0, Lru/rocketbank/core/utils/rx/ViewDraw$DrawViewTransformation;

    invoke-direct {v0}, Lru/rocketbank/core/utils/rx/ViewDraw$DrawViewTransformation;-><init>()V

    return-object v0
.end method

.method public final drawView(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lru/rocketbank/core/utils/rx/ViewDraw;->applyDrawView()Lru/rocketbank/core/utils/rx/ViewDraw$DrawViewTransformation;

    move-result-object v0

    check-cast v0, Lrx/Observable$Transformer;

    invoke-virtual {p1, v0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.just(view).compose(applyDrawView())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final measureView(Landroid/view/View;II)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;II)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;

    invoke-direct {v0, p2, p3}, Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;-><init>(II)V

    check-cast v0, Lrx/functions/Func1;

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    const-string p2, "Observable.just(view).ma\u2026\n            v\n        })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
