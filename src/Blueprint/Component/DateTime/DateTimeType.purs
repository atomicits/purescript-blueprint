module Blueprint.Component.DateTime.DateTimeType where


import Data.Date (Date)
import Unsafe.Coerce (unsafeCoerce)

import Blueprint.Type

foreign import data  DatePickerModifiers :: *
foreign import data DateRange :: *


getDateRange :: Date -> Date -> DateRange
getDateRange d1 d2 = unsafeCoerce [d1, d2]

getDatePickerModifier :: forall a . a -> DatePickerModifiers
getDatePickerModifier = unsafeCoerce

type DatePickerBaseProps = DatePickerBasePropsEx ()

type DatePickerBasePropsEx r = PropsEx
  ( initialMonth :: Date
  , locale :: String
  , localeUtils :: DatePickerLocaleUtils
  , maxDate :: Date
  , minDate :: Date
  , modifiers :: DatePickerModifiers
  | r
  )



type DatePickerLocaleUtils =
  { formatDay  :: Date -> String -> String
  , formatMonthTitle  ::  Date ->  String -> String
  , formatWeekdayShort :: Int -> String -> String
  , formatWeekdayLong :: Int -> String -> String
  , getFirstDayOfWeek :: String ->  Int
  , getMonths :: String -> Array String
  }


data ShortCuts = Boolean | Array DateRangeShortcut

type DateRangeShortcut =
  { label :: String
  , dateRange :: DateRange
  }

newtype TimePickerPrecision = TimePickerPrecision Int

minutes :: TimePickerPrecision
minutes = TimePickerPrecision 0

seconds :: TimePickerPrecision
seconds = TimePickerPrecision 1

milliseconds :: TimePickerPrecision
milliseconds = TimePickerPrecision 2
