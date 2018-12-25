.class final Lru/rocketbank/r2d2/utils/ViewModelObservable$check$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewModelObservable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/ViewModelObservable;->check()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/utils/ViewModelObservable$check$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$check$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$check$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/utils/ViewModelObservable$check$1;->INSTANCE:Lru/rocketbank/r2d2/utils/ViewModelObservable$check$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$check$1;->invoke(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result p1

    return p1
.end method
