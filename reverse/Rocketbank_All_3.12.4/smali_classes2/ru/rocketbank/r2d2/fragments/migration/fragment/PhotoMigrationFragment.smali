.class public abstract Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;
.source "PhotoMigrationFragment.java"


# static fields
.field public static final ANDROID_INTENT_EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

.field private static final KEY_PHOTO_PATH:Ljava/lang/String; = "KEY_PHOTO_PATH"

.field private static final REQUEST_TAKE_PHOTO:I = 0x22b


# instance fields
.field private onClickListener:Landroid/view/View$OnClickListener;

.field private photoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->photoPath:Ljava/lang/String;

    .line 53
    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private checkPermissions()Z
    .locals 5

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v2, Lru/rocketbank/core/model/RequestPermissionEvent;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-direct {v2, v1}, Lru/rocketbank/core/model/RequestPermissionEvent;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return v4

    :cond_0
    return v1
.end method

.method private createFile()Ljava/io/File;
    .locals 5

    .line 193
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 195
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->photoPath:Ljava/lang/String;

    return-object v1
.end method

.method private setPhotoIsNeeded()V
    .locals 3

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06022c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 145
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->buttonBottom:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->buttonBottom:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->button:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->button:Landroid/widget/Button;

    new-instance v2, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setPhotoIsReady()V
    .locals 3

    .line 159
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->image:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 160
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->photoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->image:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->buttonBottom:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->buttonBottom:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->button:Landroid/widget/Button;

    const v1, 0x7f1102d6

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->button:Landroid/widget/Button;

    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->textViewHintTop:Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->getHintTopReadyTextRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showPhoto()V
    .locals 1

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->photoPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->setPhotoIsNeeded()V

    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->setPhotoIsReady()V

    return-void
.end method


# virtual methods
.method protected getCameraIntent()Landroid/content/Intent;
    .locals 3

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "output"

    .line 96
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->createFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extras.CAMERA_FACING"

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method protected abstract getHintTopReadyTextRes()I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x22b

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 134
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->checkPermissions()Z

    .line 135
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->setPhotoIsReady()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->photoPath:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->initView()V

    .line 139
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->setPhotoIsNeeded()V

    return-void
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->onError(Ljava/lang/Throwable;)V

    .line 119
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->button:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->buttonBottom:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/core/events/ResultPermissionEvent;)V
    .locals 3

    .line 69
    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->getGrantResults()[I

    move-result-object p1

    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 70
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->showPhoto()V

    :cond_0
    return-void
.end method

.method public onNextButtonClick(Landroid/view/View;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->checkPermissions()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->button:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->buttonBottom:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->photoPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "image/*"

    .line 110
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    const-string v1, "image"

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->sendPhoto(Lokhttp3/MultipartBody$Part;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->execute(Lrx/Observable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 188
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_PHOTO_PATH"

    .line 189
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->photoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTakePhotoClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->checkPermissions()Z

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->getCameraIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x22b

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->buttonBottom:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->button:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :catch_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 40
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "KEY_PHOTO_PATH"

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->photoPath:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->showPhoto()V

    .line 45
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->buttonBottom:Landroid/widget/Button;

    const v0, 0x7f1102b3

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 46
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->checkPermissions()Z

    const p2, 0x7f09008e

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901c7

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected abstract sendPhoto(Lokhttp3/MultipartBody$Part;)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/migration/MigrationResponse;",
            ">;"
        }
    .end annotation
.end method
