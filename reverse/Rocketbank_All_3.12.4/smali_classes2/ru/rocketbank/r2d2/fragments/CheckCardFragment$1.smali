.class Lru/rocketbank/r2d2/fragments/CheckCardFragment$1;
.super Ljava/lang/Object;
.source "CheckCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/CheckCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/CheckCardFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CheckCardFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/CheckCardFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/CheckCardFragment;->nextPressed(Landroid/view/View;)V

    return-void
.end method
