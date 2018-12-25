.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetAvatarClick$1;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onSetAvatarClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetAvatarClick$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1336
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetAvatarClick$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$clearAvatar(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    goto :goto_0

    .line 1334
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetAvatarClick$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$onAvatarFromFacebook(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    return-void

    .line 1332
    :pswitch_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetAvatarClick$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$onSetAvatarFromGalleryRequested(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    return-void

    .line 1330
    :pswitch_3
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onSetAvatarClick$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$onSetAvatarFromCameraRequested(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
