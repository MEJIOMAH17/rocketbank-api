.class final Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$onGalleryClickListener$1;
.super Ljava/lang/Object;
.source "PhotoRegistrationFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$onGalleryClickListener$1;->this$0:Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$onGalleryClickListener$1;->this$0:Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;

    const-string v1, "v"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->access$onGalleryClick(Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;Landroid/view/View;)V

    return-void
.end method
