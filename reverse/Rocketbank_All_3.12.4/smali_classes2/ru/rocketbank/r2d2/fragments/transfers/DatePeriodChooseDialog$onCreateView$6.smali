.class public final Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$6;
.super Ljava/lang/Object;
.source "DatePeriodChooseDialog.kt"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$6;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public final onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$6;->this$0:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->updateTab(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void
.end method

.method public final onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
