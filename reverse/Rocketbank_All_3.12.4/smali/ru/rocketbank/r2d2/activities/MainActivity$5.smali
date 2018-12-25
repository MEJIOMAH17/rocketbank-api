.class Lru/rocketbank/r2d2/activities/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$5;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    .line 230
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$5;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->access$500(Lru/rocketbank/r2d2/activities/MainActivity;)V

    .line 231
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$5;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->access$600(Lru/rocketbank/r2d2/activities/MainActivity;)Landroid/support/v7/app/ActionBarDrawerToggle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$5;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->setActionButtonIcon()V

    :cond_0
    return-void
.end method
