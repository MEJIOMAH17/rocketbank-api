.class public final Lru/rocketbank/r2d2/root/chat/ChatFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "ChatFragment.kt"

# interfaces
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;
.implements Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;
.implements Lru/rocketbank/r2d2/root/chat/ChatDownloadInterface;
.implements Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/ChatFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatFragment.kt\nru/rocketbank/r2d2/root/chat/ChatFragment\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,714:1\n60#2:715\n31#2,23:716\n1246#3:739\n1315#3,3:740\n1519#3,2:743\n*E\n*S KotlinDebug\n*F\n+ 1 ChatFragment.kt\nru/rocketbank/r2d2/root/chat/ChatFragment\n*L\n384#1:715\n384#1,23:716\n457#1:739\n457#1,3:740\n458#1,2:743\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/chat/ChatFragment$Companion;

.field public static final FILE_NAME:Ljava/lang/String; = "FILE_NAME"

.field public static final INCOMMING_OPERATION:I = 0xf00d

.field public static final KEY_OPERATION:Ljava/lang/String; = "KEY_OPERATION"

.field public static final MESSAGE_TEXT:Ljava/lang/String; = "MESSAGE_TEXT"

.field public static final PENDING_FILE:Ljava/lang/String; = "PENDING_FILE"

.field public static final PERM_ASK_CAMERA:I = 0x0

.field public static final PERM_ASK_FILE:I = 0x2

.field public static final PERM_ASK_GALLERY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChatFragment"

.field public static final TYPE_MESSAGE_INCOMING:I = 0x0

.field public static final TYPE_MESSAGE_INCOMING_DOCUMENT:I = 0x14

.field public static final TYPE_MESSAGE_INCOMING_IMAGE:I = 0xa

.field public static final TYPE_MESSAGE_INCOMING_OPERATION:I = 0x1e

.field public static final TYPE_MESSAGE_INCOMING_RATING:I = 0x28

.field public static final TYPE_MESSAGE_INCOMING_STICKER:I = 0x32

.field public static final TYPE_MESSAGE_INCOMING_TEXT:I = 0x0

.field public static final TYPE_MESSAGE_OUTGOING:I = 0x1

.field public static final TYPE_MESSAGE_OUTGOING_DOCUMENT:I = 0x15

.field public static final TYPE_MESSAGE_OUTGOING_IMAGE:I = 0xb

.field public static final TYPE_MESSAGE_OUTGOING_OPERATION:I = 0x1f

.field public static final TYPE_MESSAGE_OUTGOING_RATING:I = 0x29

.field public static final TYPE_MESSAGE_OUTGOING_STICKER:I = 0x33

.field public static final TYPE_MESSAGE_OUTGOING_TEXT:I = 0x1

.field public static final TYPE_MESSAGE_TYPING:I = 0xffff


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private actionButtonView:Landroid/widget/ImageButton;

.field private adapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

.field public agentApi:Lru/rocketbank/core/network/api/AgentsApi;

.field private amountView:Lru/rocketbank/core/widgets/RocketTextView;

.field private attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private cameraPhotoPath:Ljava/lang/String;

.field private chatActionPopup:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

.field private chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

.field private closeView:Landroid/widget/ImageButton;

.field public cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private delimiterMenu:Landroid/view/View;

.field private editZoneView:Landroid/widget/RelativeLayout;

.field private isKeyboardOpened:Z

.field private messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

.field private messageSubscription:Lrx/Subscription;

.field private messageView:Lru/rocketbank/core/widgets/RocketEditText;

.field public moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field public onRatingBarChangeListener:Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

.field private openPopupSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private operationBlockView:Landroid/widget/RelativeLayout;

.field private operationNameView:Lru/rocketbank/core/widgets/RocketTextView;

.field private pendingFile:Lru/rocketbank/r2d2/root/chat/PendingFile;

.field private ratingSubscription:Lrx/Subscription;

.field private rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

.field private rootView:Landroid/view/ViewGroup;

.field private sendView:Landroid/widget/ImageButton;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->Companion:Lru/rocketbank/r2d2/root/chat/ChatFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 144
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->openPopupSubject:Lrx/subjects/PublishSubject;

    return-void
.end method

.method public static final synthetic access$getActionButtonView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/widget/ImageButton;
    .locals 1

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->actionButtonView:Landroid/widget/ImageButton;

    if-nez p0, :cond_0

    const-string v0, "actionButtonView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getAdapter$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/r2d2/root/chat/ChatAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->adapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    return-object p0
.end method

.method public static final synthetic access$getAttachedOperation$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 0

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object p0
.end method

.method public static final synthetic access$getChatActionPopup$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/r2d2/root/chat/ChatActionPopup;
    .locals 1

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatActionPopup:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    if-nez p0, :cond_0

    const-string v0, "chatActionPopup"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getChatView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;
    .locals 1

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p0, :cond_0

    const-string v0, "chatView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getDelimiterMenu$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/view/View;
    .locals 1

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->delimiterMenu:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "delimiterMenu"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getEditZoneView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->editZoneView:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_0

    const-string v0, "editZoneView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMessageView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/core/widgets/RocketEditText;
    .locals 1

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p0, :cond_0

    const-string v0, "messageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getRocketLoader$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/core/widgets/RocketLoader;
    .locals 1

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez p0, :cond_0

    const-string v0, "rocketLoader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSendView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/widget/ImageButton;
    .locals 1

    .line 60
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->sendView:Landroid/widget/ImageButton;

    if-nez p0, :cond_0

    const-string v0, "sendView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getWindowWidth$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->windowWidth:I

    return p0
.end method

.method public static final synthetic access$hideProgress(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->hideProgress()V

    return-void
.end method

.method public static final synthetic access$reopenChatPopUp(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->reopenChatPopUp()V

    return-void
.end method

.method public static final synthetic access$setActionButtonView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/widget/ImageButton;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->actionButtonView:Landroid/widget/ImageButton;

    return-void
.end method

.method public static final synthetic access$setAdapter$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Lru/rocketbank/r2d2/root/chat/ChatAdapter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->adapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    return-void
.end method

.method public static final synthetic access$setAttachedOperation$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public static final synthetic access$setChatActionPopup$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Lru/rocketbank/r2d2/root/chat/ChatActionPopup;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatActionPopup:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    return-void
.end method

.method public static final synthetic access$setChatView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    return-void
.end method

.method public static final synthetic access$setDelimiterMenu$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/View;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->delimiterMenu:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setEditZoneView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->editZoneView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static final synthetic access$setMessageView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageView:Lru/rocketbank/core/widgets/RocketEditText;

    return-void
.end method

.method public static final synthetic access$setRocketLoader$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Lru/rocketbank/core/widgets/RocketLoader;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    return-void
.end method

.method public static final synthetic access$setSendView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/widget/ImageButton;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->sendView:Landroid/widget/ImageButton;

    return-void
.end method

.method public static final synthetic access$setWindowWidth$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;I)V
    .locals 0

    .line 60
    iput p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->windowWidth:I

    return-void
.end method

.method public static final synthetic access$updateOperation(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->updateOperation()V

    return-void
.end method

.method private final checkOrRequestCamera(I)Z
    .locals 4

    .line 620
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 621
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 622
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v3, "android.permission.CAMERA"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 624
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 627
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 631
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_5

    const-string v0, "android.permission.CAMERA"

    .line 635
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 639
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 640
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 642
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->requestPermissions([Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private final checkOrRequestFileSave(I)Z
    .locals 3

    .line 595
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 596
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 601
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 605
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 609
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 610
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 612
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->requestPermissions([Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private final checkOrRequestGallery(I)Z
    .locals 2

    .line 650
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 652
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 655
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 659
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 660
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 662
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->requestPermissions([Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private final hideProgress()V
    .locals 0

    .line 586
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->hideSpinner()V

    return-void
.end method

.method private final initClicks()V
    .locals 2

    .line 266
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->closeView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const-string v1, "closeView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 272
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->actionButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    const-string v1, "actionButtonView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->openPopupSubject:Lrx/subjects/PublishSubject;

    check-cast v1, Lrx/Observable;

    invoke-static {v0, v1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$2;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 285
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_2

    const-string v1, "chatView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$3;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$3;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    .line 290
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->sendView:Landroid/widget/ImageButton;

    if-nez v0, :cond_3

    const-string v1, "sendView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private final loadNextPageIfNeeded()V
    .locals 4

    .line 549
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "chatView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 550
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 551
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 552
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->adapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;->getItemCount()I

    move-result v2

    sub-int v1, v0, v1

    const/16 v3, 0x64

    if-le v1, v3, :cond_3

    move v1, v3

    :cond_3
    sub-int/2addr v2, v0

    shl-int/lit8 v0, v1, 0x1

    if-ge v2, v0, :cond_4

    .line 559
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageManager;->loadNextPage()V

    return-void

    :cond_4
    return-void
.end method

.method public static bridge synthetic onSendPostActions$default(Lru/rocketbank/r2d2/root/chat/ChatFragment;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 528
    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->onSendPostActions(Z)V

    return-void
.end method

.method private final reopenChatPopUp()V
    .locals 2

    .line 250
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatActionPopup:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    if-nez v0, :cond_0

    const-string v1, "chatActionPopup"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->dismiss()V

    .line 251
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->openPopupSubject:Lrx/subjects/PublishSubject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final setListenerToRootView()V
    .locals 3

    .line 233
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "activity!!.window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "activityRootView"

    .line 235
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment$setListenerToRootView$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/View;)V

    check-cast v2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method private final showProgressExecution()V
    .locals 1

    const v0, 0x7f110023

    .line 591
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->showSpinner(I)V

    return-void
.end method

.method private final startFileDownload()V
    .locals 3

    .line 694
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->pendingFile:Lru/rocketbank/r2d2/root/chat/PendingFile;

    if-eqz v0, :cond_1

    .line 696
    sget-object v1, Lru/rocketbank/core/service/DownloadService;->Companion:Lru/rocketbank/core/service/DownloadService$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/PendingFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/PendingFile;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lru/rocketbank/core/service/DownloadService$Companion;->startDownloadPdf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 697
    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->pendingFile:Lru/rocketbank/r2d2/root/chat/PendingFile;

    :cond_1
    return-void
.end method

.method private final updateOperation()V
    .locals 7

    .line 255
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->operationBlockView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const-string v1, "operationBlockView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->operationNameView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_1

    const-string v2, "operationNameView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_3

    const-string v2, "amountView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v2, :cond_4

    const-string v3, "moneyFormatter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v3}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v3

    iget-object v5, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v5, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v5}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v5}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "attachedOperation!!.displayMoney!!.currencyCode"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5, v1}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 261
    :cond_9
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->operationBlockView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_a

    const-string v1, "operationBlockView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private final uploadImage(ILandroid/content/Intent;)V
    .locals 3

    .line 486
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_FROM_CAMERA:I

    const/4 v1, 0x0

    const/16 v2, 0x400

    if-ne p1, v0, :cond_2

    .line 487
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->cameraPhotoPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 488
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, v2}, Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadFromCamera(Ljava/lang/String;I)V

    .line 489
    :cond_0
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->onSendPostActions(Z)V

    :cond_1
    return-void

    .line 492
    :cond_2
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_FROM_GALLERY:I

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    .line 494
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2, v2}, Lru/rocketbank/r2d2/root/chat/MessageManager;->uploadFromGallery(Landroid/content/Intent;I)V

    .line 495
    :cond_3
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->onSendPostActions(Z)V

    return-void

    :cond_4
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    new-instance v0, Lru/rocketbank/r2d2/root/chat/PendingFile;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/root/chat/PendingFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->pendingFile:Lru/rocketbank/r2d2/root/chat/PendingFile;

    .line 705
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    const/4 p1, 0x2

    .line 706
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->checkOrRequestFileSave(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 710
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->startFileDownload()V

    :cond_1
    return-void
.end method

.method public final getAgentApi()Lru/rocketbank/core/network/api/AgentsApi;
    .locals 2

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->agentApi:Lru/rocketbank/core/network/api/AgentsApi;

    if-nez v0, :cond_0

    const-string v1, "agentApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 2

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v0, :cond_0

    const-string v1, "cropCircleTransformation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMessageManager()Lru/rocketbank/r2d2/root/chat/MessageManager;
    .locals 1

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    return-object v0
.end method

.method public final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 2

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v0, :cond_0

    const-string v1, "moneyFormatter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getOnRatingBarChangeListener()Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;
    .locals 2

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->onRatingBarChangeListener:Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

    if-nez v0, :cond_0

    const-string v1, "onRatingBarChangeListener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final isKeyboardOpened()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->isKeyboardOpened:Z

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "ChatFragment"

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const p2, 0xf00d

    if-eq p1, p2, :cond_0

    .line 471
    invoke-direct {p0, p1, p3}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->uploadImage(ILandroid/content/Intent;)V

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 474
    sget-object p1, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->Companion:Lru/rocketbank/r2d2/activities/operation/OperationListActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$Companion;->getOPEATION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string p2, "data.getParcelableExtra(\u2026ionListActivity.OPEATION)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Operation;

    .line 475
    instance-of p2, p1, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz p2, :cond_1

    .line 476
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->send(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method public final onCameraPressed()V
    .locals 2

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->checkOrRequestCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->startCamera()V

    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0c00cc

    .line 147
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0900d5

    .line 149
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    const v1, 0x7f090013

    .line 150
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->actionButtonView:Landroid/widget/ImageButton;

    const v1, 0x7f09031a

    .line 151
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->sendView:Landroid/widget/ImageButton;

    const v1, 0x7f09025e

    .line 152
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v1, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageView:Lru/rocketbank/core/widgets/RocketEditText;

    const v1, 0x7f09015a

    .line 153
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->editZoneView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0902fb

    .line 154
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f0903d8

    .line 155
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f090225

    .line 157
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketLoader"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast v1, Lru/rocketbank/core/widgets/RocketLoader;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    const v1, 0x7f090293

    .line 159
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->operationBlockView:Landroid/widget/RelativeLayout;

    const v1, 0x7f090297

    .line 160
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->operationNameView:Lru/rocketbank/core/widgets/RocketTextView;

    const v1, 0x7f09004d

    .line 161
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    check-cast v1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->amountView:Lru/rocketbank/core/widgets/RocketTextView;

    const v1, 0x7f0900df

    .line 163
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->closeView:Landroid/widget/ImageButton;

    const v1, 0x7f090126

    .line 165
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.delimiterMenu)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->delimiterMenu:Landroid/view/View;

    .line 167
    new-instance v1, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    const-string v2, "view"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->rootView:Landroid/view/ViewGroup;

    if-nez v3, :cond_c

    const-string v4, "rootView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-direct {v1, v2, p1, v3}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatActionPopup:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    .line 168
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatActionPopup:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    if-nez p1, :cond_d

    const-string v1, "chatActionPopup"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->setActions(Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;)V

    .line 169
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatActionPopup:Lru/rocketbank/r2d2/root/chat/ChatActionPopup;

    if-nez p1, :cond_e

    const-string v1, "chatActionPopup"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    new-instance v1, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;

    invoke-direct {v1, p0, p2}, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/View;)V

    check-cast v1, Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->setDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 180
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v1, "KEY_OPERATION"

    .line 181
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/dto/operations/Operation;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 183
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz p1, :cond_10

    .line 184
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->delimiterMenu:Landroid/view/View;

    if-nez p1, :cond_f

    const-string v1, "delimiterMenu"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    if-eqz p3, :cond_11

    const-string p1, "FILE_NAME"

    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->cameraPhotoPath:Ljava/lang/String;

    const-string p1, "PENDING_FILE"

    .line 190
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/root/chat/PendingFile;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->pendingFile:Lru/rocketbank/r2d2/root/chat/PendingFile;

    .line 197
    :cond_11
    new-instance p1, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$4;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$4;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    check-cast p1, Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->onRatingBarChangeListener:Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

    .line 208
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "window"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_12

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    check-cast p1, Landroid/view/WindowManager;

    .line 209
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 211
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 212
    invoke-virtual {p1, p3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 213
    iget p1, p3, Landroid/graphics/Point;->x:I

    iput p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->windowWidth:I

    .line 215
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "input_method"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 217
    iget-object p3, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p3, :cond_14

    const-string v0, "chatView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$5;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$5;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/inputmethod/InputMethodManager;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p3, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->setListenerToRootView()V

    return-object p2
.end method

.method public final onDestroyView()V
    .locals 1

    .line 415
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    .line 416
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 417
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public final onGalleyPressed()V
    .locals 2

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 519
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->checkOrRequestGallery(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->startGallery()V

    :cond_1
    return-void
.end method

.method public final onLovePressed()V
    .locals 1

    .line 513
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageManager;->sendLove()V

    :cond_0
    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->onSendPostActions(Z)V

    return-void
.end method

.method public final onOperationPressed()V
    .locals 3

    .line 506
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUserImmediate()Lru/rocketbank/core/model/UserModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0xf00d

    .line 508
    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 675
    array-length v0, p3

    :goto_0
    if-ge p2, v0, :cond_1

    .line 676
    aget v1, p3, p2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 679
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f11031e

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 689
    :pswitch_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->startFileDownload()V

    goto :goto_1

    .line 687
    :pswitch_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->startGallery()V

    return-void

    .line 685
    :pswitch_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->startCamera()V

    return-void

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FILE_NAME"

    .line 670
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->cameraPhotoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PENDING_FILE"

    .line 671
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->pendingFile:Lru/rocketbank/r2d2/root/chat/PendingFile;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onScrollChanged(IZZ)V
    .locals 0

    .line 420
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->loadNextPageIfNeeded()V

    return-void
.end method

.method public final onSendPostActions(Z)V
    .locals 2

    .line 529
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "chatView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->smoothScrollToPosition(I)V

    if-eqz p1, :cond_2

    .line 531
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez p1, :cond_1

    const-string v0, "messageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final onStart()V
    .locals 8

    .line 382
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onStart()V

    .line 384
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "messageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    check-cast v0, Ljava/lang/CharSequence;

    .line 717
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    move v5, v1

    :goto_0
    if-gt v1, v4, :cond_5

    if-nez v5, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v4

    .line 722
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-gt v6, v7, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    add-int/2addr v4, v2

    .line 738
    invoke-interface {v0, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->sendView:Landroid/widget/ImageButton;

    if-nez v1, :cond_6

    const-string v4, "sendView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v4, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->attachedOperation:Lru/rocketbank/core/model/dto/operations/Operation;

    if-nez v4, :cond_9

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :cond_9
    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_a

    const-string v1, "messageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 392
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-nez v0, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageManager;->onStart()V

    .line 393
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageManager;->refresh()V

    .line 394
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_d

    const-string v1, "rocketLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0, v3}, Lru/rocketbank/core/widgets/RocketLoader;->setVisibility(I)V

    .line 396
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->updateOperation()V

    .line 399
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lme/leolin/shortcutbadger/ShortcutBadger;->removeCount(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ChatFragment"

    const-string v2, "removeCount is dead"

    .line 401
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 406
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onStop()V

    .line 407
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/MessageManager;->onStop()V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MESSAGE_TEXT"

    .line 410
    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v2, :cond_1

    const-string v3, "messageView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 313
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f11044a

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MESSAGE_TEXT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageView:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v1, :cond_1

    const-string v2, "messageView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->initClicks()V

    .line 320
    new-instance v0, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    .line 322
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAgentsApi()Lru/rocketbank/core/network/api/AgentsApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->agentApi:Lru/rocketbank/core/network/api/AgentsApi;

    .line 328
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 329
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    .line 330
    new-instance v1, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v3, :cond_4

    const-string v4, "authorization"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-direct {v1, v2, v3, v0}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    .line 332
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz v0, :cond_6

    .line 333
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->rocketLoader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_5

    const-string v1, "rocketLoader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketLoader;->setVisibility(I)V

    .line 338
    :cond_6
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lru/rocketbank/r2d2/activities/MainActivity;

    if-eqz v0, :cond_7

    const v0, 0x7f0903d8

    .line 339
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->setupDefaultToolbar(Landroid/view/View;I)I

    goto :goto_0

    .line 341
    :cond_7
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_8

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 344
    :goto_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 345
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v1, :cond_9

    const-string v2, "chatView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 347
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->adapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    if-nez v1, :cond_b

    .line 348
    new-instance v1, Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez v2, :cond_a

    const-string v3, "chatView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    invoke-direct {v1, p0, p1, v2, v3}, Lru/rocketbank/r2d2/root/chat/ChatAdapter;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lru/rocketbank/r2d2/root/chat/MessageManager;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->adapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    .line 351
    :cond_b
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_c

    const-string v1, "chatView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->adapter:Lru/rocketbank/r2d2/root/chat/ChatAdapter;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 353
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->chatView:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    if-nez p1, :cond_d

    const-string v1, "chatView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    move-object v1, p0

    check-cast v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;

    invoke-virtual {p1, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 354
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-nez p1, :cond_e

    .line 355
    new-instance p1, Lru/rocketbank/r2d2/root/chat/MessageManager;

    invoke-direct {p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    .line 358
    :cond_e
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz p1, :cond_10

    .line 359
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/chat/MessageManager;->onCreate(Landroid/os/Bundle;)V

    .line 360
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageSubscription:Lrx/Subscription;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 361
    :cond_f
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->messageObservable()Lrx/Observable;

    move-result-object p1

    const-wide/16 v1, 0xa

    .line 362
    invoke-virtual {p1, v1, v2}, Lrx/Observable;->onBackpressureBuffer(J)Lrx/Observable;

    move-result-object p1

    .line 363
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 364
    sget-object v1, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$3$1;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$3$1;

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {p1, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object p1

    .line 367
    new-instance v1, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p2, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment$onViewCreated$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;Landroid/os/Bundle;Landroid/support/v7/widget/LinearLayoutManager;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {p1, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageSubscription:Lrx/Subscription;

    return-void

    :cond_10
    return-void
.end method

.method public final retry(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->retryMessage(Lru/rocketbank/core/model/message/MessageIn;)V

    return-void

    :cond_0
    return-void
.end method

.method public final sendRating(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "permalink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->showProgressExecution()V

    .line 566
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->agentApi:Lru/rocketbank/core/network/api/AgentsApi;

    if-nez v0, :cond_0

    const-string v1, "agentApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lru/rocketbank/core/network/api/AgentsApi;->rate(Ljava/lang/String;ILjava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 567
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 568
    new-instance p2, Lru/rocketbank/r2d2/root/chat/ChatFragment$sendRating$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment$sendRating$1;-><init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    check-cast p2, Lrx/Subscriber;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->ratingSubscription:Lrx/Subscription;

    return-void
.end method

.method public final setAgentApi(Lru/rocketbank/core/network/api/AgentsApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->agentApi:Lru/rocketbank/core/network/api/AgentsApi;

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setCropCircleTransformation(Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-void
.end method

.method public final setKeyboardOpened(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->isKeyboardOpened:Z

    return-void
.end method

.method public final setMessageManager(Lru/rocketbank/r2d2/root/chat/MessageManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->messageManager:Lru/rocketbank/r2d2/root/chat/MessageManager;

    return-void
.end method

.method public final setMoneyFormatter(Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method public final setOnRatingBarChangeListener(Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->onRatingBarChangeListener:Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

    return-void
.end method

.method public final startCamera()V
    .locals 7

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "photo_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "Calendar.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFileManager()Lru/rocketbank/core/utils/fs/FileManager;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v0, v2}, Lru/rocketbank/core/utils/fs/FileManager;->createPublicImageFile(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment;->cameraPhotoPath:Ljava/lang/String;

    .line 446
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 447
    instance-of v2, v1, Lru/rocketbank/r2d2/activities/SecuredActivity;

    if-eqz v2, :cond_0

    .line 448
    check-cast v1, Lru/rocketbank/r2d2/activities/SecuredActivity;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->keepUnlocked()V

    .line 451
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "output"

    .line 452
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 455
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_4

    .line 456
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "resInfoList"

    .line 457
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 739
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 740
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 741
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 457
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 742
    :cond_2
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 743
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 461
    :cond_4
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_FROM_CAMERA:I

    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public final startGallery()V
    .locals 3

    .line 536
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 538
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 539
    instance-of v2, v1, Lru/rocketbank/r2d2/activities/SecuredActivity;

    if-eqz v2, :cond_0

    .line 540
    check-cast v1, Lru/rocketbank/r2d2/activities/SecuredActivity;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->keepUnlocked()V

    .line 543
    :cond_0
    :try_start_0
    sget v1, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_FROM_GALLERY:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method
