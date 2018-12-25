.class final Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$onResume$1;
.super Ljava/lang/Object;
.source "BaseAmountActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/facade/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$onResume$1;->call(Lru/rocketbank/core/model/facade/Account;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/facade/Account;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;->access$onSelectAccount(Lru/rocketbank/r2d2/activities/c2c/BaseAmountActivity;Lru/rocketbank/core/model/facade/Account;)V

    return-void
.end method
