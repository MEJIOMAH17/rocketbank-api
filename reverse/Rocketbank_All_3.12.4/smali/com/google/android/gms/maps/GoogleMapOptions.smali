.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/GoogleMapOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbnX:Ljava/lang/Boolean;

.field private zzbnY:Ljava/lang/Boolean;

.field private zzbnZ:I

.field private zzboa:Lcom/google/android/gms/maps/model/CameraPosition;

.field private zzbob:Ljava/lang/Boolean;

.field private zzboc:Ljava/lang/Boolean;

.field private zzbod:Ljava/lang/Boolean;

.field private zzboe:Ljava/lang/Boolean;

.field private zzbof:Ljava/lang/Boolean;

.field private zzbog:Ljava/lang/Boolean;

.field private zzboh:Ljava/lang/Boolean;

.field private zzboi:Ljava/lang/Boolean;

.field private zzboj:Ljava/lang/Boolean;

.field private zzbok:Ljava/lang/Float;

.field private zzbol:Ljava/lang/Float;

.field private zzbom:Lcom/google/android/gms/maps/model/LatLngBounds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/zza;

    invoke-direct {v0}, Lcom/google/android/gms/maps/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnZ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbok:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbol:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbom:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method

.method constructor <init>(BBILcom/google/android/gms/maps/model/CameraPosition;BBBBBBBBBLjava/lang/Float;Ljava/lang/Float;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 2

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnZ:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbok:Ljava/lang/Float;

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbol:Ljava/lang/Float;

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbom:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-static {p1}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnX:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnY:Ljava/lang/Boolean;

    move v1, p3

    iput v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnZ:I

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboa:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p5}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbob:Ljava/lang/Boolean;

    invoke-static {p6}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboc:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbod:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboe:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbof:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbog:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboh:Ljava/lang/Boolean;

    invoke-static {p12}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboi:Ljava/lang/Boolean;

    invoke-static {p13}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboj:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbok:Ljava/lang/Float;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbol:Ljava/lang/Float;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbom:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/R$styleable;->MapAttrs:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_mapType:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_mapType:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_1
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_zOrderOnTop:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_zOrderOnTop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_2
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_useViewLifecycle:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_useViewLifecycle:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_3
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiCompass:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiCompass:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_4
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiRotateGestures:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiRotateGestures:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_5
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiScrollGestures:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiScrollGestures:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_6
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiTiltGestures:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiTiltGestures:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_7
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiZoomGestures:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiZoomGestures:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_8
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiZoomControls:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiZoomControls:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_9
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_liteMode:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_liteMode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_a
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiMapToolbar:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiMapToolbar:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_b
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_ambientEnabled:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_c

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_ambientEnabled:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->ambientEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_c
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_cameraMinZoomPreference:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_cameraMinZoomPreference:I

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->minZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_d
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_cameraMinZoomPreference:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_cameraMaxZoomPreference:I

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->maxZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_e
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/LatLngBounds;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->latLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/CameraPosition;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method


# virtual methods
.method public final ambientEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboj:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboa:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object p0
.end method

.method public final compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboc:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getAmbientEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboj:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboa:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public final getCompassEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLatLngBoundsForCameraTarget()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbom:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final getLiteMode()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboh:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getMapToolbarEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboi:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getMapType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnZ:I

    return v0
.end method

.method public final getMaxZoomPreference()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbol:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMinZoomPreference()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbok:Ljava/lang/Float;

    return-object v0
.end method

.method public final getRotateGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbog:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getScrollGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbod:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTiltGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbof:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUseViewLifecycleInFragment()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnY:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getZOrderOnTop()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnX:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getZoomControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbob:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final latLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbom:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public final liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboh:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboi:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnZ:I

    return-object p0
.end method

.method public final maxZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbol:Ljava/lang/Float;

    return-object p0
.end method

.method public final minZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbok:Ljava/lang/Float;

    return-object p0
.end method

.method public final rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbog:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbod:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbof:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnY:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/zza;->zza(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnX:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbob:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboe:Ljava/lang/Boolean;

    return-object p0
.end method

.method final zzJo()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnX:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJp()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbnY:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJq()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbob:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJr()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboc:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJs()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbod:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJt()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboe:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJu()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbof:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJv()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzbog:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJw()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboh:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJx()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboi:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final zzJy()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzboj:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zzd(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method
