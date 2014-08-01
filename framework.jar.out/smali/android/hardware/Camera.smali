.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$1;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ContinuousShotDone;,
        Landroid/hardware/Camera$PreviewRawDumpCallback;,
        Landroid/hardware/Camera$ZSDPreviewDone;,
        Landroid/hardware/Camera$AUTORAMAMVCallback;,
        Landroid/hardware/Camera$AUTORAMACallback;,
        Landroid/hardware/Camera$AFDataCallback;,
        Landroid/hardware/Camera$ASDCallback;,
        Landroid/hardware/Camera$MAVCallback;,
        Landroid/hardware/Camera$SmileCallback;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_NO_MEMORY:I = 0x3e8

.field public static final CAMERA_ERROR_RESET:I = 0x3e9

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final MTK_CAMERA_MSG_EXT_DATA:I = -0x80000000

.field private static final MTK_CAMERA_MSG_EXT_DATA_AF:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_DATA_AUTORAMA:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_DATA_BURST_SHOT:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY:I = 0x40000000

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ASD:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_BURST_SHUTTER:I = 0x4

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_CONTINUOUS_END:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_MAV:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_RAW_DUMP_STOPPED:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_SMILE_DETECT:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ZSD_PREVIEW_DONE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

.field private mASDCallback:Landroid/hardware/Camera$ASDCallback;

.field private mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;

.field private mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mMAVCallback:Landroid/hardware/Camera$MAVCallback;

.field private mNativeContext:I

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

.field private mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSmileCallback:Landroid/hardware/Camera$SmileCallback;

.field private mStereo3DModeForCamera:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-boolean v0, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 244
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 435
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-boolean v1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 244
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 245
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 411
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 412
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 413
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 414
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 415
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 416
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 417
    iput-object v2, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 420
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 421
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 428
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;I)V

    .line 429
    return-void

    .line 422
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 425
    :cond_1
    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .parameter "callbackBuffer"
    .parameter "msgType"

    .prologue
    .line 818
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 820
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 825
    return-void
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 283
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 284
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 285
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 287
    .local v0, audioService:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v2

    .line 293
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2082
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2083
    .local v0, camera:Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "def"

    .prologue
    .line 1698
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2020
    const-string/jumbo v0, "persist.sys.screen.size"

    const-string v1, "800x480"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getTorchOn()I
.end method

.method public static isFlashlightUseCamera()Z
    .locals 4

    .prologue
    .line 299
    invoke-static {}, Landroid/hardware/Camera;->getTorchOn()I

    move-result v0

    .line 300
    .local v0, result:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFlashlightUseCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRestricted(I)Z
    .locals 10
    .parameter "pid"

    .prologue
    .line 1985
    const/4 v7, 0x0

    .line 1986
    .local v7, ret:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cmdline"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1988
    .local v3, f:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1990
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    move-object v4, v5

    .line 1995
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1996
    .local v6, inReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1997
    .local v1, buffer:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    new-array v0, v8, [C

    .line 1999
    .local v0, buf:[C
    :goto_1
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 2000
    const/4 v8, 0x0

    aget-char v8, v0, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2003
    :catch_0
    move-exception v2

    .line 2004
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2007
    .end local v2           #e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.apps.unveil"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2008
    const/4 v7, 0x1

    .line 2010
    :cond_0
    return v7

    .line 1991
    .end local v0           #buf:[C
    .end local v1           #buffer:Ljava/lang/StringBuilder;
    .end local v6           #inReader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 1992
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2002
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #buf:[C
    .restart local v1       #buffer:Ljava/lang/StringBuilder;
    .restart local v6       #inReader:Ljava/io/InputStreamReader;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private static native native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private static native native_setProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;I)V
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 399
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 400
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 401
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 402
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 403
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 404
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v1}, Landroid/hardware/Camera;-><init>(I)V

    .line 407
    :goto_1
    return-object v3

    .line 401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 389
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1030
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1031
    .local v0, c:Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 1035
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1036
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewDisplay(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "val"

    .prologue
    .line 1707
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    return-void
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 769
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 770
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 812
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 813
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1116
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1117
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1120
    return-void

    .line 1118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1133
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1134
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1135
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1152
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1153
    return-void

    .line 1135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native cancelContinuousShot()V
.end method

.method public native cancelPanorama()V
.end method

.method public native cancelSDPreview()V
.end method

.method public final native doPanorama(I)V
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    .line 1396
    if-nez p1, :cond_0

    .line 1397
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1398
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1400
    .local v0, audioService:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1405
    .end local v0           #audioService:Landroid/media/IAudioService;
    .end local v1           #b:Landroid/os/IBinder;
    :goto_0
    return v3

    .line 1401
    .restart local v0       #audioService:Landroid/media/IAudioService;
    .restart local v1       #b:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1402
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    .end local v0           #audioService:Landroid/media/IAudioService;
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 439
    return-void
.end method

.method public native flashlight_close()I
.end method

.method public native flashlight_onoff(I)I
.end method

.method public native flashlight_open(I)I
.end method

.method public native flashlight_set_luminance(I)V
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2041
    new-instance v0, Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, p0, v6}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2042
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2043
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2045
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera framework getParameters ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-boolean v3, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setStereo3DMode(Z)V

    .line 2051
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/Camera;->isRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2052
    const-string/jumbo v3, "tablet"

    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2054
    const-string v2, "760x480"

    .line 2055
    .local v2, size:Ljava/lang/String;
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change preview size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const-string/jumbo v3, "preview-size-values"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const-string/jumbo v3, "preview-size"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    .end local v2           #size:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 2062
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    .line 2063
    .restart local v2       #size:Ljava/lang/String;
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change preview size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const-string/jumbo v3, "preview-size-values"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const-string/jumbo v3, "preview-size"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 453
    return-void
.end method

.method public final setAFDataCallback(Landroid/hardware/Camera$AFDataCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1838
    iput-object p1, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    .line 1839
    return-void
.end method

.method public final setASDCallback(Landroid/hardware/Camera$ASDCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1820
    iput-object p1, p0, Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;

    .line 1821
    return-void
.end method

.method public final setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1863
    iput-object p1, p0, Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;

    .line 1864
    return-void
.end method

.method public final setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1871
    iput-object p1, p0, Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    .line 1872
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 1181
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1182
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1183
    return-void

    .line 1182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCSDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1958
    iput-object p1, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;

    .line 1959
    return-void
.end method

.method public native setContinuousShotSpeed(I)V
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1684
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 1685
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1466
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1467
    return-void
.end method

.method public final setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1803
    iput-object p1, p0, Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;

    .line 1804
    return-void
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 693
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 694
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 695
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 696
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 697
    return-void

    :cond_0
    move v0, v1

    .line 696
    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1973
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 1974
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 670
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 671
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 672
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 675
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 676
    return-void

    :cond_0
    move v0, v1

    .line 675
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 728
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 729
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 730
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 731
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 732
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    if-eqz p1, :cond_0

    .line 537
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1943
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    .line 1944
    return-void
.end method

.method public setPreviewRawDumpCallback(Landroid/hardware/Camera$PreviewRawDumpCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1936
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 1937
    return-void
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1731
    iput-object p1, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    .line 1732
    return-void
.end method

.method public setStereo3DModeForCamera(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2030
    iput-boolean p1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 2031
    return-void
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1439
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1440
    return-void
.end method

.method public final native startAUTORAMA(I)V
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 1502
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 1503
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1506
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1507
    return-void
.end method

.method public final native startMAV(I)V
.end method

.method public final native startPreview()V
.end method

.method public native startSDPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public native stopAUTORAMA(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 1515
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1516
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1517
    return-void
.end method

.method public native stopMAV(I)V
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 631
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 634
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 635
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 636
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 637
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 638
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 639
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 640
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 642
    return-void

    .line 640
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 1228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1229
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 1263
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1264
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1265
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1266
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1269
    const/4 v0, 0x0

    .line 1270
    .local v0, msgType:I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 1271
    or-int/lit8 v0, v0, 0x2

    .line 1273
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 1274
    or-int/lit16 v0, v0, 0x80

    .line 1276
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1277
    or-int/lit8 v0, v0, 0x40

    .line 1279
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 1280
    or-int/lit16 v0, v0, 0x100

    .line 1283
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1284
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1285
    return-void
.end method

.method public final native unlock()V
.end method
