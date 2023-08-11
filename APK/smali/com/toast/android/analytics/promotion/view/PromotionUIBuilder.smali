.class public Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;
.super Ljava/lang/Object;


# static fields
.field public static PROMOTION_INVISIBLE_24HR:Ljava/lang/String; = null

.field public static PROMOTION_INVISIBLE_FOREVER:Ljava/lang/String; = null

.field public static PROMOTION_VISIBLE:Ljava/lang/String; = null

.field private static REWARD_PREFIX:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "PromotionUIBuilder"

.field static _sInstance:Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

.field static _sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

.field static mCheckedImageBitmap:Landroid/graphics/Bitmap;

.field static mCheckedRadioButton:Ljava/lang/String;

.field static mModifiedTime:J

.field static mUnCheckedRadioButton:Ljava/lang/String;

.field static mUncheckedImageBitmap:Landroid/graphics/Bitmap;


# instance fields
.field counter:I

.field mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    invoke-direct {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sInstance:Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    const/4 v0, 0x0

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    const-string v0, "reward"

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->REWARD_PREFIX:Ljava/lang/String;

    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3NpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpjNWU5YWZmMS1kYTlhLTRhYzQtODljNS1kZjkzNjdhNjI1MjMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MThCOEY5NjMzNTZCMTFFNEIyQTM4QUY1QTA1NTQ4MDUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MThCOEY5NjIzNTZCMTFFNEIyQTM4QUY1QTA1NTQ4MDUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6OGYxOGU2NDktNWFkNC00N2NmLWJjMjItMzZhMjMzNTBmMDgxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOmM1ZTlhZmYxLWRhOWEtNGFjNC04OWM1LWRmOTM2N2E2MjUyMyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pp6LF/kAAAFCSURBVHja7NtBSgJxFMfxNyPWPVpJBnWGaGHkMXThsovUqkXUNQIX0hkMhnIleodEHMjp9/IvDdEFnPf9wQ8HZ/U+82dm9bKqquxPTtWB2lNP1GM77GzUuTpWn9X3+s2sBnCk3qkjNbdmZqs+qbfqug7gw7+oVxYjr+q1Wu6f9H2g4T2X6bT/nICuft/UlsXKl3qepxdetOEtzTzwE/Chi47FzMwBNuklGDGlA1QWOLkFDwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAATQUoA8//6QDzwABLBxgHBpj4ysyZLqYWc23uwk9AoT4GfPo+c8HqbPrDvwQ36oPtFoybmm168v391y/7Z2vOV2mH9rs+3z7woVfqwl94tlufL+o3vwUYAA/gS6DbNVMyAAAAAElFTkSuQmCC"

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mUnCheckedRadioButton:Ljava/lang/String;

    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3NpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpjNWU5YWZmMS1kYTlhLTRhYzQtODljNS1kZjkzNjdhNjI1MjMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MThCOEY5NUYzNTZCMTFFNEIyQTM4QUY1QTA1NTQ4MDUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MThCOEY5NUUzNTZCMTFFNEIyQTM4QUY1QTA1NTQ4MDUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6OGYxOGU2NDktNWFkNC00N2NmLWJjMjItMzZhMjMzNTBmMDgxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOmM1ZTlhZmYxLWRhOWEtNGFjNC04OWM1LWRmOTM2N2E2MjUyMyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PuPdhtoAAAJgSURBVHja7Ju/TsJAHMd/1Wh5DiejJroyYhw0usIT4ODowgphYdPJkKLPwGZoiHHiATQhahiIvoPFQJDzd9LGShC5u/659u6XfENDE9LPp9fSu/RnEEJgprYwRcwhZgNjQrJriOljbMwN5sm/0/AJWMdcYM4wK5DOmmCuMeeYD78ACn+LOQA16h5zhBl5Z/pSIXha++5o/x4B2/j5iFkFteoTs7vi3vBUgweXuUhHwDNubIKa9UIFDN2boIo1ogIIKFxagBagBWgBWoDKAhI762s0GlCtVsV/iCSwLMsihmHQkUsqlYrQb0GS4b2Uy2U1BMyDF5UAaYAXkQBpgeeVAGmC99Jut9MhgAe+VCqlYwREAS+tgKjgpRQQJbx0AqKGl0pAHPCBCBgMBmQ8HicSXliA4zgkl8uRQqHALSFOeCEBHrx3UPl8nlkCTmljhecWMAvPI0EGeC4Bf8GzSJAFnlnAf/DLSJAJnknAsvCLJMgGzySg0+kQ0zSZDt4vQUZ45kug1WpxSajX61LCc90EeSSwJip47r/BMCVECS/0IEQlZDKZRMMLPwoHKSEO+EAmQ0FIiAs+sOmwiIQ44QNdD+CREDd84AsiLBJkgA9lRWgZCbLAh7YktkiCTPChrgnOkyAbPK1Q3xCxbRuazSZks1no9XpQq9X0KzJagBagBWgBWoAWIJcAlRsm3umbon2FB8AbFWArLOCOXgI7uPEAarbN7dER0MVYCp59ytzVrbPuFyPMMeYKpg3Gaa2Je+ZPXOZf3eNe0VbaU/hpn19LOLSDeaU3PJi2z3f9O78EGADNLvwh6JNL4QAAAABJRU5ErkJggg=="

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mCheckedRadioButton:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mModifiedTime:J

    const-string v0, "INVISIBLE_FOREVER"

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_INVISIBLE_FOREVER:Ljava/lang/String;

    const-string v0, "INVISIBLE_24HR"

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_INVISIBLE_24HR:Ljava/lang/String;

    const-string v0, "VISIBLE"

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_VISIBLE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->counter:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private downloadResource(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x2710

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v5, 0x2710

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_2
    :try_start_2
    const-string v5, "PromotionUIBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadResource fail.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    :try_start_4
    sget-object v5, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6, p1, p2}, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;->setResource([BLjava/lang/String;Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_8
    :goto_4
    move v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    if-eqz v3, :cond_9

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public static getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sInstance:Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    return-object v0
.end method

.method public static getRewardKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->REWARD_PREFIX:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    invoke-direct {v0, p0}, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mUnCheckedRadioButton:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mUncheckedImageBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mCheckedRadioButton:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mCheckedImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private notifyPendingOperationFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$1;-><init>(Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addPromotionData(Ljava/lang/String;)I
    .locals 19

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v5, 0xa

    :try_start_1
    const-string v3, "userType"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    move v7, v3

    :goto_0
    :try_start_2
    const-string v3, "promotionList"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    const/4 v3, 0x0

    move v5, v3

    move v6, v4

    move v3, v2

    :goto_1
    if-ge v5, v10, :cond_6

    :try_start_3
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/toast/android/analytics/promotion/model/Promotion;->createWithMapData(Lorg/json/JSONObject;)Lcom/toast/android/analytics/promotion/model/Promotion;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/toast/android/analytics/promotion/model/Promotion;->setUserType(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v4, v3, 0x1

    :try_start_4
    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getModifiedTime()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getModifiedTime()J

    move-result-wide v14

    cmp-long v3, v14, v12

    if-gez v3, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->setModifiedTime(J)V

    :cond_0
    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->isPromotion()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "adspaceList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v2, 0x0

    move v3, v6

    move v6, v2

    :goto_2
    if-ge v6, v13, :cond_2

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->isExistView(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v14}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->makeView(Ljava/lang/String;Lcom/toast/android/analytics/promotion/model/Promotion;Z)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string v14, "PromotionUIBuilder"

    const-string v15, "adspace : %s promotion_id : %d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    const/4 v2, 0x1

    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    move v7, v5

    goto/16 :goto_0

    :cond_2
    :try_start_6
    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->isStartMission()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PromotionUIBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start mission : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCustomKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " / "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCustomValue()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCustomKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "|"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCustomValue()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v2, v3

    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v6, v2

    move v3, v4

    goto/16 :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getRewardKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->isExistView(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v3}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->makeView(Ljava/lang/String;Lcom/toast/android/analytics/promotion/model/Promotion;Z)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v6, 0x1

    move v2, v6

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCampaignId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/toast/android/analytics/common/Analytics;->traceCampaignAchievement(Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCampaignId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/toast/android/analytics/common/Analytics;->traceCampaignReward(Ljava/lang/String;)I

    const-string v3, "PromotionUIBuilder"

    const-string v6, "reward_id : %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v13

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-object v3, v2

    move v2, v4

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_6
    return v2

    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    invoke-interface {v2, v9}, Lcom/toast/android/analytics/GameAnalytics$CampaignListener;->onMissionComplete(Ljava/util/List;)V

    :cond_7
    if-eqz v6, :cond_8

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->setModifiedTime(J)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
    move v2, v3

    goto :goto_6

    :catch_2
    move-exception v3

    goto :goto_5

    :catch_3
    move-exception v2

    move-object/from16 v18, v2

    move v2, v3

    move-object/from16 v3, v18

    goto :goto_5

    :cond_9
    move v2, v6

    goto :goto_4
.end method

.method public cleanupExpiredResource()V
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;->cleanupExpiredResource()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBlockedPromotionList(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;->getBlockedPromotionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mCheckedImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    sget-wide v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mModifiedTime:J

    return-wide v0
.end method

.method public getResource(Ljava/lang/String;)[B
    .locals 4

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "PromotionUIBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeup promotion thread for dowloading image .."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/toast/android/analytics/promotion/PromotionManager;->wakeupPollingThread()V

    :cond_0
    return-object v0
.end method

.method public getUncheckedImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mUncheckedImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isPromotionVisible(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;->isPromotionVisible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public makeView(Ljava/lang/String;Lcom/toast/android/analytics/promotion/model/Promotion;Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setViewProperty(Ljava/lang/String;Lcom/toast/android/analytics/promotion/model/Promotion;)V

    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getImpressionType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "popup"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCloseImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getExpire()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->downloadResource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCloseImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->notifyPendingOperationFail(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPortraitImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getExpire()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->downloadResource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandscapeImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getExpire()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->downloadResource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPortraitImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "land "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandscapeImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->notifyPendingOperationFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$2;

    invoke-direct {v2, p0, v3, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$2;-><init>(Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;Lcom/toast/android/analytics/promotion/view/PromotionUICache;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setModifiedTime(J)V
    .locals 1

    sput-wide p1, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mModifiedTime:J

    return-void
.end method

.method public setOnCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    return-void
.end method

.method public setPromotionVisibility(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;->deletePromotionVisivility(Ljava/lang/String;)V

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_INVISIBLE_24HR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_INVISIBLE_FOREVER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->_sPromotionSqlHelper:Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;

    invoke-virtual {v0, p1, p2}, Lcom/toast/android/analytics/promotion/model/dao/PromotionSQLHelper;->addPromotionVisivility(Ljava/lang/String;Ljava/lang/String;)J

    :cond_1
    return-void
.end method
