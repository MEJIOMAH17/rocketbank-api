.class public Lru/rocketbank/r2d2/root/chat/base/MessageData;
.super Ljava/lang/Object;
.source "MessageData.kt"


# instance fields
.field private final background:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final firstMessage:Landroid/databinding/ObservableBoolean;

.field private final progressVisible:Landroid/databinding/ObservableBoolean;

.field private final retryVisible:Landroid/databinding/ObservableBoolean;

.field private final statusText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final statusVisible:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->statusText:Landroid/databinding/ObservableField;

    .line 9
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->statusVisible:Landroid/databinding/ObservableBoolean;

    .line 10
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroid/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->retryVisible:Landroid/databinding/ObservableBoolean;

    .line 11
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->progressVisible:Landroid/databinding/ObservableBoolean;

    .line 12
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->background:Landroid/databinding/ObservableField;

    .line 13
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->firstMessage:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getBackground()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->background:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getFirstMessage()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->firstMessage:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getProgressVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->progressVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getRetryVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->retryVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getStatusText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->statusText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getStatusVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/base/MessageData;->statusVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
