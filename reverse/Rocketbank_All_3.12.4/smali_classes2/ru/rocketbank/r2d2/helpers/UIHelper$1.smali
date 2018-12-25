.class final Lru/rocketbank/r2d2/helpers/UIHelper$1;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/helpers/UIHelper;->setPadding(ZLandroid/view/View;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isBottom:Z

.field final synthetic val$isRight:Z

.field final synthetic val$isTop:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ZZZ)V
    .locals 0

    .line 71
    iput-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$1;->val$view:Landroid/view/View;

    iput-boolean p2, p0, Lru/rocketbank/r2d2/helpers/UIHelper$1;->val$isBottom:Z

    iput-boolean p3, p0, Lru/rocketbank/r2d2/helpers/UIHelper$1;->val$isRight:Z

    iput-boolean p4, p0, Lru/rocketbank/r2d2/helpers/UIHelper$1;->val$isTop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/helpers/UIHelper$1;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$1;->val$isBottom:Z

    iget-boolean v2, p0, Lru/rocketbank/r2d2/helpers/UIHelper$1;->val$isRight:Z

    iget-boolean v3, p0, Lru/rocketbank/r2d2/helpers/UIHelper$1;->val$isTop:Z

    const/4 v4, 0x1

    invoke-static {v4, v0, v1, v2, v3}, Lru/rocketbank/r2d2/helpers/UIHelper;->access$000(ZLandroid/view/View;ZZZ)V

    return-void
.end method
