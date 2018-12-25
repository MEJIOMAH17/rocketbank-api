.class final Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$2;
.super Ljava/lang/Object;
.source "APViewHolder.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lru/rocketbank/core/model/facade/Account;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$2;->call(Lru/rocketbank/core/model/facade/Account;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/model/facade/Account;)Z
    .locals 1

    .line 37
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RUB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
