from datetime import datetime, timezone
import pytz


def get_desired_timezone() -> timezone:
    return pytz.timezone('Europe/Moscow')


def get_time_now() -> datetime:
    timezone = get_desired_timezone()
    return datetime.now(timezone)


def format_time(time: datetime) -> str:
    datetime_format = '%m/%d/%Y, %H:%M:%S'
    return time.strftime(datetime_format)
