.class final Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$1;
.super Ljava/lang/Object;
.source "RemittanceCheckInfoFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->onResume()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$onResume$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
